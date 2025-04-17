import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';

import '../../../../core/utils/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.name, required this.image});
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32.r,
          backgroundColor: AppColors.baseWhite,
          child: Image.asset(image, width: 30.w, height: 30.h),
        ),
        Text(name, style: AppStyles.semiBold12Gray),
      ],
    );
  }
}
