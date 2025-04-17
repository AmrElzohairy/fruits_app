import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/home/data/models/fruit_model.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.fruit});
  final FruitModel fruit;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 140.w,
                  height: 140.h,
                  decoration: BoxDecoration(
                    color: AppColors.baseWhite,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Image.asset(fruit.image, width: 100.w, height: 100.h),
                ),
                const Positioned(
                  right: 8,
                  bottom: 8,
                  child: CircleAvatar(
                    backgroundColor: AppColors.white,
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(fruit.name, style: AppStyles.medium16Black),
            SizedBox(height: 5.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.imagesStar),
                SizedBox(width: 5.w),
                Text("${fruit.rate}", style: AppStyles.semiBold12Gray),
                SizedBox(width: 5.w),
                Text("(${fruit.rateCount})", style: AppStyles.semiBold12Gray),
              ],
            ),
            SizedBox(height: 8.h),
            Text("\$${fruit.price}", style: AppStyles.semiBold16Black),
          ],
        ),
      ),
    );
  }
}
