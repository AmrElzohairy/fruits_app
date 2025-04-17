import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

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
                  child: Image.asset(
                    Assets.imagesBanana,
                    width: 100.w,
                    height: 100.h,
                  ),
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
            Text("Banana", style: AppStyles.medium16Black),
            SizedBox(height: 5.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.imagesStar),
                SizedBox(width: 5.w),
                Text("4.5", style: AppStyles.semiBold12Gray),
                SizedBox(width: 5.w),
                Text("(100)", style: AppStyles.semiBold12Gray),
              ],
            ),
            SizedBox(height: 8.h),
            Text("\$2.00", style: AppStyles.semiBold16Black),
          ],
        ),
      ),
    );
  }
}
