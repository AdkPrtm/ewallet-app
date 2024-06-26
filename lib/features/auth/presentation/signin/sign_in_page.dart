import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/core/widgets/forms.dart';
import 'package:ewallet/features/auth/domain/domain.dart';
import 'package:ewallet/features/auth/presentation/bloc/auth/auth_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController(text: '');
    final passwordController = TextEditingController(text: '');
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
            'Sign In &\nGrow Your Finance',
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
                  //EMAIL INPUT
                  CustomFormField(
                    title: 'Email Address',
                    textEditingController: emailController,
                    validator: (value) {
                      if (emailValidator(value!)) {
                        return null;
                      } else {
                        return 'Invalid Email';
                      }
                    },
                  ),
                  SizedBox(height: 16.h),
                  //EMAIL INPUT
                  CustomFormField(
                    obsecureText: true,
                    title: 'Password',
                    textEditingController: passwordController,
                    validator: (value) {
                      return passwordValidator(value!);
                    },
                  ),
                  SizedBox(height: 16.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password',
                      style: AppFont().blueTextStyle,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state is AuthDone) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
                      }
                      if (state is AuthFailed) {
                        showCustomSnackbar(context, state.message);
                      }
                    },
                    builder: (context, state) {
                      if (state is AuthLoading) {
                        return CustomFilledButton(
                          title: 'Sign In',
                          disable: true,
                          onTap: () {},
                        );
                      }
                      return CustomFilledButton(
                        title: 'Sign In',
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                  AuthLogin(
                                    SignInParams(
                                      email: emailController.text,
                                      password: passwordController.text,
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
              title: 'Create New Account',
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              }),
        ],
      ),
    );
  }
}
