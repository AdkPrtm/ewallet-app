import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/tips_widget.dart';
import 'package:template_clean_architecture/features/tips/presentation/bloc/tips_bloc.dart';
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
                alignment: WrapAlignment.spaceBetween,
                spacing: 15.w,
                runSpacing: 15.w,
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
            return Center(
              child: CircularProgressIndicator(
                color: purpleColor,
                strokeWidth: 5.h,
              ),
            );
          },
        ),
      ],
    );
  }
}
