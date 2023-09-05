import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/profile_card_receiver_widget.dart';

class CustomSendAgainComponent extends StatelessWidget {
  const CustomSendAgainComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Send Again',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
        SizedBox(height: 14.h),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProfileCardReceiverWidget(
                profileImage: ImgString.friend1Image,
                username: '@yuanita',
              ),
              ProfileCardReceiverWidget(
                profileImage: ImgString.friend2Image,
                username: '@jani',
              ),
              ProfileCardReceiverWidget(
                profileImage: ImgString.friend1Image,
                username: '@urip',
              ),
              ProfileCardReceiverWidget(
                profileImage: ImgString.friend2Image,
                username: '@@masa',
              ),
            ],
          ),
        )
      ],
    );
  }
}
