import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/features/auth/domain/domain.dart';
import 'package:template_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:template_clean_architecture/utils/helper/helper.dart';

class SetKtpPage extends StatefulWidget {
  const SetKtpPage({super.key, required this.data});

  final SignUpParams data;

  @override
  State<SetKtpPage> createState() => _SetKtpPageState();
}

class _SetKtpPageState extends State<SetKtpPage> {
  final pinController = TextEditingController(text: '');
  XFile? selectedImage;

  bool validate() {
    if (pinController.text.length != 6) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        children: [
          Container(
            height: 50.h,
            width: 155.w,
            margin: EdgeInsets.only(top: 100.h, bottom: 100.h),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImgString.logoLightImage),
              ),
            ),
          ),
          Text(
            'Verify Your\nAccount',
            style: AppFont().blackTextStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: AppFont().semibold,
                ),
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
                GestureDetector(
                  onTap: () async {
                    final image = await selectImage();
                    setState(() {
                      selectedImage = image;
                    });
                  },
                  child: Container(
                    height: 120.h,
                    width: 120.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: lightBackground,
                        image: selectedImage == null
                            ? null
                            : DecorationImage(
                                image: FileImage(
                                  File(selectedImage!.path),
                                ),
                                fit: BoxFit.cover,
                              )),
                    child: selectedImage == null
                        ? Center(
                            child: Image.asset(
                              IconString.uploadIcon,
                              width: 32.h,
                            ),
                          )
                        : null,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Passport/ID Card',
                  style: AppFont().blackTextStyle.copyWith(
                        fontSize: 18.sp,
                        fontWeight: AppFont().medium,
                      ),
                ),
                SizedBox(height: 50.h),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is AuthFailed) {
                      showCustomSnackbar(context, state.message);
                    }
                    if (state is AuthDone) {
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/success-widget',
                          arguments: SuccessWidgetModelHelper(
                            navigator: '/home',
                            title: 'Akun Berhasil\nTerdaftar',
                            subtitle:
                                'Grow your finance start\ntogether with us',
                            textButton: 'Get Started',
                          ),
                          (route) => false);
                    }
                  },
                  builder: (context, state) {
                    if (state is AuthLoading) {
                      return CustomFilledButton(
                        title: 'Continue',
                        onTap: () {},
                        disable: true,
                      );
                    }
                    return CustomFilledButton(
                      title: 'Continue',
                      onTap: () {
                        context.read<AuthBloc>().add(
                              AuthRegister(
                                widget.data.copyWith(
                                    ktp: selectedImage == null
                                        ? null
                                        : 'data:image/png;base64, ${base64Encode(File(selectedImage!.path).readAsBytesSync())}'),
                              ),
                            );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 60.h),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthFailed) {
                showCustomSnackbar(context, state.message);
              }
              if (state is AuthDone) {
                Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/success-widget',
                    arguments: SuccessWidgetModelHelper(
                      navigator: '/home',
                      title: 'Akun Berhasil\nTerdaftar',
                      subtitle: 'Grow your finance start\ntogether with us',
                      textButton: 'Get Started',
                    ),
                    (route) => false);
              }
            },
            builder: (context, state) {
              if (state is AuthLoading) {
                return CustomeTextButton(title: 'title', onTap: () {});
              }
              return CustomeTextButton(
                title: 'Skip for now',
                onTap: () {
                  context.read<AuthBloc>().add(
                        AuthRegister(widget.data),
                      );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
