import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/action_profile_widget.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/feature/user/domain/entities/user_entities.dart';
import 'package:template_clean_architecture/feature/user/presentation/profile/component/profile_component.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 24.w,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 26.h),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ImageProfileHeader(
                  url: userEntity.profilePicture!,
                  verified: userEntity.verified!,
                ),
                16.0.height,
                Text(
                  userEntity.name!,
                  style: AppFont().blackTextStyle.copyWith(
                        fontSize: 18.sp,
                        fontWeight: AppFont().medium,
                      ),
                ),
                40.0.height,
                ActionProfileWidget(
                  svgAsset: SvgSrc.profileSVG,
                  title: 'Edit Profile',
                  onTap: () async {
                    if (await Navigator.pushNamed(
                          context,
                          '/pin',
                          arguments: userEntity,
                        ) ==
                        true) {
                      if (context.mounted) {
                        Navigator.pushNamed(
                          context,
                          '/profile-edit',
                          arguments: userEntity,
                        );
                      }
                    }
                  },
                ),
                30.0.height,
                ActionProfileWidget(
                  svgAsset: SvgSrc.mypinSVG,
                  title: 'My Pin',
                  onTap: () => Navigator.pushNamed(context, '/profile-pin'),
                ),
                30.0.height,
                ActionProfileWidget(
                  svgAsset: SvgSrc.walletSVG,
                  title: 'Wallet Settings',
                  onTap: () {},
                ),
                30.0.height,
                ActionProfileWidget(
                  svgAsset: SvgSrc.myRewardSVG,
                  title: 'My Rewards',
                  onTap: () {},
                ),
                30.0.height,
                ActionProfileWidget(
                  svgAsset: SvgSrc.helpCenterSVG,
                  title: 'Help Center',
                  onTap: () {},
                ),
                30.0.height,
                ActionProfileWidget(
                  svgAsset: SvgSrc.logoutSVG,
                  title: 'Logout',
                  onTap: () {},
                ),
              ],
            ),
          ),
          87.0.height,
          CustomeTextButton(
            title: 'Report a Problem',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
