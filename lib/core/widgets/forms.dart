import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.title,
    this.obsecureText = false,
    this.textEditingController,
    this.keyboardType,
    this.maxLength,
    required this.validator,
  });

  final String title;
  final bool obsecureText;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final int? maxLength;
  final String? Function(String?)? validator;

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
            counterText: "",
          ),
          keyboardType: keyboardType,
          obscureText: obsecureText,
          controller: textEditingController,
          maxLength: maxLength,
          validator: validator,
        ),
      ],
    );
  }
}
