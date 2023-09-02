import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/core/widgets/forms.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/presentation/bloc/user_bloc.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    final TextEditingController conUsername = TextEditingController(text: '');
    final TextEditingController conName = TextEditingController(text: '');
    final TextEditingController conEmail = TextEditingController(text: '');
    final TextEditingController conPassword = TextEditingController(text: '');
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                CustomFormField(
                  title: 'Username',
                  textEditingController: conUsername,
                ),
                16.0.height,
                CustomFormField(
                  title: 'Full Name',
                  textEditingController: conName,
                ),
                16.0.height,
                CustomFormField(
                  title: 'Email Address',
                  textEditingController: conEmail,
                ),
                16.0.height,
                CustomFormField(
                  title: 'Password',
                  obsecureText: true,
                  textEditingController: conPassword,
                ),
                30.0.height,
                BlocConsumer<UserBloc, UserState>(
                  listener: (context, state) {
                    if (state is UpdateProfileSuccess) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    }

                    if (state is UserFailed) {
                      showCustomSnackbar(context, state.message);
                    }
                  },
                  builder: (context, state) {
                    if (state is UserLoading) {
                      return CustomFilledButton(
                        title: 'Update Now',
                        disable: true,
                        onTap: () {},
                      );
                    }
                    return CustomFilledButton(
                      title: 'Update Now',
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          context.read<UserBloc>().add(
                                UpdateDataProfileEvent(
                                  userEntity: userEntity,
                                  updateProfileUserParams:
                                      UpdateProfileUserParams(
                                    username: conUsername.text,
                                    name: conName.text,
                                    email: conEmail.text,
                                    password: conPassword.text,
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
      ),
    );
  }
}
