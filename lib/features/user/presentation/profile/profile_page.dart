import 'package:ewallet/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/action_profile_widget.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/features/user/domain/entities/user_entities.dart';
import 'package:ewallet/features/user/presentation/profile/component/profile_component.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

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
      body: ListView(
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
                  '${userEntity.firstName!} ${userEntity.lastName!}',
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
                    if (context.mounted) {
                      Navigator.pushNamed(
                        context,
                        '/profile-edit',
                        arguments: userEntity,
                      );
                    }
                  },
                ),
                30.0.height,
                ActionProfileWidget(
                  svgAsset: SvgSrc.mypinSVG,
                  title: 'My Pin',
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/profile-pin',
                    arguments: userEntity,
                  ),
                ),
                30.0.height,
                ActionProfileWidget(
                  svgAsset: SvgSrc.verifiedIcon,
                  title: 'Verified Account',
                  isVerifiedList: true,
                  verified: userEntity.verified ?? false,
                  onTap: userEntity.verified!
                      ? () {}
                      : () => Navigator.pushNamed(
                            context,
                            '/verification',
                            arguments: userEntity,
                          ),
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
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Logout?'),
                        titleTextStyle: AppFont().blackTextStyle.copyWith(
                            fontSize: 18.sp, fontWeight: AppFont().medium),
                        content:
                            const Text('Are you sure you want to log out?'),
                        contentTextStyle:
                            AppFont().blackTextStyle.copyWith(fontSize: 16.sp),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CustomeTextButton(
                                  title: 'Yes',
                                  onTap: () {
                                    context.read<AuthBloc>().add(AuthLogout());
                                    Navigator.pushNamedAndRemoveUntil(
                                        context, '/signin', (route) => false);
                                  },
                                ),
                              ),
                              Expanded(
                                child: CustomFilledButton(
                                  title: 'Cancel',
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          30.0.height,
          CustomeTextButton(
            title: 'Report a Problem',
            onTap: () {},
          ),
          30.0.height,
        ],
      ),
    );
  }
}
