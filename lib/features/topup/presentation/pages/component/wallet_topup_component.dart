import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class WalletTopupComponent extends StatelessWidget {
  const WalletTopupComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wallet',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
        10.0.height,
        Row(
          children: [
            Container(
              height: 55.h,
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage(
                    ImgString.bgCardImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            16.0.width,
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is AuthDone) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '**** **** **** ${state.userEntity.cardNumber!.substring(12,16)}',
                        style: AppFont().blackTextStyle.copyWith(
                              fontSize: 16.sp,
                              fontWeight: AppFont().medium,
                            ),
                      ),
                      Text(
                        state.userEntity.name!,
                        style: AppFont().greyTextStyle.copyWith(
                              fontSize: 12.sp,
                            ),
                      )
                    ],
                  );
                }
                return Container();
              },
            )
          ],
        )
      ],
    );
  }
}
