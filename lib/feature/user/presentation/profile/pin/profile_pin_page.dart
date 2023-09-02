import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/core/widgets/forms.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class ProfilePinPage extends StatelessWidget {
  const ProfilePinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const CustomFormField(
                title: 'Old Pin',
                obsecureText: true,
              ),
              16.0.height,
              const CustomFormField(
                title: 'New Pin',
                obsecureText: true,
              ),
              16.0.height,
              const CustomFormField(
                title: 'Confirmation New Pin',
                obsecureText: true,
              ),
              30.0.height,
              CustomFilledButton(
                title: 'Update Now',
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/success-widget',
                  (route) => false,
                  arguments: {
                    'navigator': '/home',
                    'title': 'Nice Update!',
                    'subtitle': 'Your data is safe with\nour system',
                    'textButton': 'My Profile',
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
