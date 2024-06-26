import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/core/widgets/forms.dart';
import 'package:ewallet/features/user/domain/domain.dart';
import 'package:ewallet/features/user/presentation/bloc/user_bloc.dart';
import 'package:ewallet/utils/extensions/extensions.dart';
import 'package:ewallet/utils/helper/helper.dart';

class ProfilePinPage extends StatelessWidget {
  const ProfilePinPage({super.key});

  @override
  Widget build(BuildContext context) {
    final conOldPin = TextEditingController(text: '');
    final conNewPin = TextEditingController(text: '');
    final conConfirmNewPin = TextEditingController(text: '');
    final keyForm = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: keyForm,
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
                  title: 'Old Pin',
                  obsecureText: true,
                  textEditingController: conOldPin,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Old Pin Required';
                    }
                    return null;
                  },
                ),
                16.0.height,
                CustomFormField(
                  title: 'New Pin',
                  obsecureText: true,
                  textEditingController: conNewPin,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'New Pin Required';
                    }
                    return null;
                  },
                ),
                16.0.height,
                CustomFormField(
                  title: 'Confirmation New Pin',
                  obsecureText: true,
                  textEditingController: conConfirmNewPin,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Confirmation New Pin Required';
                    }
                    if (value != conNewPin.text) {
                      return 'Confirm Pin not matching';
                    }
                    return null;
                  },
                ),
                30.0.height,
                BlocConsumer<UserBloc, UserState>(
                  listener: (context, state) {
                    if (state is UpdateProfileSuccess) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/success-widget',
                        (route) => false,
                        arguments: SuccessWidgetModelHelper(
                          navigator: '/home',
                          title: 'Nice Update!',
                          subtitle: 'Your data is safe with\nour system',
                          textButton: 'My Profile',
                        ),
                      );
                    }

                    if (state is UserFailed) {
                      showCustomSnackbar(context, state.message);
                    }
                  },
                  builder: (context, state) {
                    if (state is UserLoading) {
                      return CustomFilledButton(
                        title: 'Update Now',
                        onTap: () {},
                        disable: true,
                      );
                    }
                    return CustomFilledButton(
                      title: 'Update Now',
                      onTap: () {
                        if (keyForm.currentState!.validate()) {
                          context.read<UserBloc>().add(
                                ChangePinUserEvent(
                                  updatePinParams: UpdatePinParams(
                                    conOldPin.text,
                                    conNewPin.text,
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
