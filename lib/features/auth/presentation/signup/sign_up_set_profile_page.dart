import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/core/widgets/forms.dart';
import 'package:ewallet/features/auth/domain/domain.dart';

import '../../../../utils/helper/model_success_helper.dart';
import '../bloc/auth/auth_bloc.dart';

class SetProfilePage extends StatefulWidget {
  const SetProfilePage({super.key, required this.data});

  final SignUpParams data;

  @override
  State<SetProfilePage> createState() => _SetProfilePageState();
}

class _SetProfilePageState extends State<SetProfilePage> {
  final pinController = TextEditingController(text: '');
  XFile? selectedImage;
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
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
            'Join Us to Unlock\nYour Growth',
            style: AppFont().blackTextStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: AppFont().semibold,
                ),
          ),
          SizedBox(height: 20.h),
          Form(
            key: formKey,
            child: Container(
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
                    '${widget.data.firstName} ${widget.data.lastName}',
                    style: AppFont().blackTextStyle.copyWith(
                          fontSize: 18.sp,
                          fontWeight: AppFont().medium,
                        ),
                  ),
                  SizedBox(height: 30.h),
                  CustomFormField(
                    title: 'Set PIN (6 digit number)',
                    obsecureText: true,
                    textEditingController: pinController,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Pin Required';
                      }
                      if (value.length != 6) {
                        return 'Pin must be 6 digits';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30.h),
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
                        title: 'Register',
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                  AuthRegister(widget.data.copyWith(
                                    pin: pinController.text,
                                    profilePicture: selectedImage == null
                                        ? ''
                                        : 'data:image/png;base64,${base64Encode(File(selectedImage!.path).readAsBytesSync())}',
                                  )),
                                );
                          }
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
