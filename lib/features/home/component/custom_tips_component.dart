import 'package:ewallet/core/widgets/shimmer/shimmer_tips_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/tips_widget.dart';
import 'package:ewallet/features/tips/presentation/bloc/tips_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTipsComponent extends StatelessWidget {
  const CustomTipsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Friendly Tips',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
        SizedBox(height: 14.h),
        BlocBuilder<TipsBloc, TipsState>(
          builder: (context, state) {
            if (state is TipsLoaded) {
              return Wrap(
                spacing: 17.w,
                runSpacing: 18.h,
                children: state.dataTips!
                    .map((dataTips) => GestureDetector(
                        onTap: () {
                          launchUrl(
                            Uri.parse(dataTips.url!),
                            mode: LaunchMode.inAppWebView,
                          );
                        },
                        child: TipsWidget(dataTipsEntity: dataTips)))
                    .toList(),
              );
            }
            List<dynamic> dummy = ['1', '2', '3', '4'];
            return Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Wrap(
                spacing: 17.w,
                runSpacing: 18.h,
                children:
                    dummy.map((_) => const ShimmerTipsComponent()).toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
