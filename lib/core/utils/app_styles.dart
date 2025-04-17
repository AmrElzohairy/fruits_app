import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';

class AppStyles {
  static TextStyle semiBold12Gray = TextStyle(
    color: AppColors.textGray,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle medium14Black = TextStyle(
    color: AppColors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle medium16Black = TextStyle(
    color: AppColors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  
  static TextStyle semiBold14Green = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBold16Black = TextStyle(
    color: AppColors.baseBlack,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
