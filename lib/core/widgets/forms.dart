import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.title,
    this.obsecureText = false,
    this.textEditingController,
    this.keyboardType,
    this.password,
  });

  final String title;
  final bool obsecureText;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final String? password;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFont().blackTextStyle.copyWith(
                fontWeight: AppFont().medium,
              ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
            errorStyle: TextStyle(fontSize: 14.sp),
            errorMaxLines: 2,
          ),
          keyboardType: keyboardType,
          obscureText: obsecureText,
          controller: textEditingController,
          validator: (value) {
            if (title == 'Email Address') {
              if (emailValidator(value!)) {
                return null;
              } else {
                return 'Invalid Email';
              }
            }
            if (title == "Password") {
              return passwordValidator(value!);
            }
            if (title == "Full Name") {
              if (value!.isEmpty) {
                return 'Full Name Required';
              }
              return null;
            }
            if (title == "Username") {
              if (value!.isEmpty) {
                return 'Full Name Required';
              }
              return null;
            }
            if (title == "Confirmation Password") {
              if (value!.isEmpty) {
                return 'Confirmation Required';
              }
              // if (value != password) {
              //   return 'Confirm password not matching';
              // }
              return null;
            }

            return null;
          },
        ),
      ],
    );
  }
}
