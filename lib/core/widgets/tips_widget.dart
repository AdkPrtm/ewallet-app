import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';

class TipsWidget extends StatelessWidget {
  const TipsWidget({super.key, required this.dataTipsEntity});

  final DataTipsEntity dataTipsEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: CachedNetworkImage(
              height: 110.h,
              width: double.infinity,
              imageUrl: dataTipsEntity.thumbnail!,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              dataTipsEntity.title!,
              style: AppFont().blackTextStyle.copyWith(
                    fontWeight: AppFont().medium,
                    overflow: TextOverflow.fade,
                  ),
              maxLines: 3,
            ),
          )
        ],
      ),
    );
  }
}
