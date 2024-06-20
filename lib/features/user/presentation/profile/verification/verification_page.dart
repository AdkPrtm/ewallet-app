import 'dart:async';

import 'package:ewallet/core/resource/method/snackbar_method.dart';
import 'package:ewallet/core/resource/src/image_src.dart';
import 'package:ewallet/core/resource/theme/app_color.dart';
import 'package:ewallet/core/resource/theme/app_font.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:ewallet/features/auth/presentation/bloc/request_otp/request_otp_bloc.dart';
import 'package:ewallet/features/user/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  int _start = 59;
  bool isLoading = false;
  late Timer _timer;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            isLoading = false;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<RequestOtpBloc>().add(RequestOtpProses());
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final RequestOtpBloc requestOtpBloc =
        BlocProvider.of<RequestOtpBloc>(context);

    @override
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verification'),
      ),
      body: BlocConsumer<RequestOtpBloc, RequestOtpState>(
        listener: (context, state) {
          if (state is SuccessVerifyOTP) {
            Future.delayed(Duration.zero, () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
            });
          }
          if (state is FailedStateOTP) {
            showCustomSnackbar(context, state.message);
          }
        },
        builder: (context, state) {
          if (state is LoadingStateOTP) {
            return Center(
              child: CircularProgressIndicator(
                color: purpleColor,
                strokeWidth: 5.h,
              ),
            );
          }
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            children: [
              Container(
                height: 50.h,
                width: 155.w,
                margin: EdgeInsets.only(top: 50.h, bottom: 50.h),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImgString.logoLightImage),
                  ),
                ),
              ),
              Text(
                'Verify Your Account',
                style: AppFont().blackTextStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: AppFont().semibold,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.all(22.h),
                width: 327.w,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'We have sent OTP to\n',
                        children: [
                          TextSpan(
                            text: '${widget.userEntity.email}',
                          ),
                        ],
                        style: AppFont().greyTextStyle.copyWith(
                              fontSize: 16.sp,
                            ),
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                    SizedBox(height: 20.h),
                    Pinput(
                      length: 6,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      submittedPinTheme: submittedPinTheme,
                      showCursor: true,
                      onCompleted: (pin) => requestOtpBloc.add(
                        VerifyOtpProses(
                          otp: VerifyOTPBody(otp: pin),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    _start != 0
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Resend Code in",
                                style: AppFont().blackTextStyle.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '00:${_start.toString()}',
                                style: AppFont().blackTextStyle.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Didn't receive code?",
                                style: AppFont().blackTextStyle.copyWith(
                                      fontSize: 16.sp,
                                    ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _start = 59;
                                    isLoading = true;
                                    startTimer();
                                    requestOtpBloc.add(RequestOtpProses());
                                  });
                                },
                                child: Text(
                                  "Resend",
                                  style: AppFont().blackTextStyle.copyWith(
                                        fontSize: 16.sp,
                                      ),
                                ),
                              )
                            ],
                          ),
                    // BlocBuilder<RequestOtpBloc, RequestOtpState>(
                    //   builder: (context, state) {
                    //     if (state is SuccessVerifyOTP) {
                    //       showCustomSnackbar(context, state.message);
                    //       Navigator.pop(context);
                    //     } else if (state is FailedStateOTP) {
                    //       showCustomSnackbar(context, state.message);
                    //     }
                    //     return const SizedBox();
                    //   },
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              CustomeTextButton(
                title: 'Skip for now',
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        },
      ),
    );
  }
}
