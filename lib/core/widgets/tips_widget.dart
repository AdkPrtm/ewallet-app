import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class TipsWidget extends StatelessWidget {
  const TipsWidget( {
    super.key,
    required this.tipsimage,
    required this.title,
    required this.url,
  });

  final String tipsimage;
  final String title;
  final Uri url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(url)) {
          launchUrl(url);
        }
      },
      child: Container(
        width: 155.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                tipsimage,
                height: 110.h,
                width: 155.w,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                title,
                style: AppFont().blackTextStyle.copyWith(
                      fontWeight: AppFont().medium,
                    ),
                maxLines: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
