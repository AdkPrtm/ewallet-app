import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/core/widgets/forms.dart';
import 'package:ewallet/features/auth/domain/domain.dart';
import 'package:ewallet/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:ewallet/features/auth/presentation/signup/sign_up_set_profile_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final firstNameController = TextEditingController(text: '');
    final lastNameController = TextEditingController(text: '');
    final usernameController = TextEditingController(text: '');
    final emailController = TextEditingController(text: '');
    final passwordController = TextEditingController(text: '');
    final konfirmasiPasswordController = TextEditingController(text: '');
    final formKey = GlobalKey<FormState>();
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
                  CustomFormField(
                    title: 'First Name',
                    textEditingController: firstNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'First Name Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.h),
                  CustomFormField(
                    title: 'Last Name',
                    textEditingController: lastNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Last Name Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.h),
                  CustomFormField(
                    title: 'Username',
                    textEditingController: usernameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Full Name Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.h),
                  CustomFormField(
                    title: 'Email Address',
                    textEditingController: emailController,
                    validator: (value) {
                      if (!emailValidator(value!)) {
                        return 'Invalid Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.h),
                  CustomFormField(
                    title: 'Password',
                    textEditingController: passwordController,
                    obsecureText: true,
                    validator: (value) {
                      return passwordValidator(value!);
                    },
                  ),
                  SizedBox(height: 16.h),
                  CustomFormField(
                    title: 'Confirmation Password',
                    textEditingController: konfirmasiPasswordController,
                    obsecureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Confirmation Required';
                      }
                      if (value != passwordController.text) {
                        return 'Confirm password not matching';
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
                      if (state is CheckDataSuccess) {
                        if (state.checkDataEntity.email) {
                          showCustomSnackbar(context, 'Email already used');
                        } else if (state.checkDataEntity.username) {
                          showCustomSnackbar(context, 'Username already used');
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SetProfilePage(
                                data: SignUpParams(
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  username: usernameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              ),
                            ),
                          );
                        }
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
                          if (formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                  CheckDataExists(
                                    CheckDataParams(
                                      email: emailController.text,
                                      username: usernameController.text,
                                    ),
                                  ),
                                );
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50.h),
          CustomeTextButton(
            title: 'Sign In',
            onTap: () {
              Navigator.pushNamed(context, '/signin');
            },
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
