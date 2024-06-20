import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/features/user/user.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

class WalletBuyDataComponent extends StatelessWidget {
  const WalletBuyDataComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'From Wallet',
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
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is UserLoaded) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '**** **** **** ${state.userEntity.cardNumber!.substring(12, 16)}',
                        style: AppFont().blackTextStyle.copyWith(
                              fontSize: 16.sp,
                              fontWeight: AppFont().medium,
                            ),
                      ),
                      Text(
                        'Balance: ${formatCurrency(state.userEntity.balance!)}',
                        style: AppFont().greyTextStyle.copyWith(
                              fontSize: 12.sp,
                            ),
                      )
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            )
          ],
        )
      ],
    );
  }
}
