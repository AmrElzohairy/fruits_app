import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/home/presentation/widgets/fruits_list_view.dart';
import 'package:fruits_app/features/home/presentation/widgets/home_banners_carousal.dart';
import 'package:fruits_app/features/home/presentation/widgets/home_categories.dart';
import 'package:fruits_app/features/home/presentation/widgets/see_all_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(Assets.imagesMotorIcon),
            const SizedBox(width: 10),
            Text("61 Hopper street..", style: AppStyles.medium16Black),
            const SizedBox(width: 5),
            const Icon(Icons.keyboard_arrow_down, color: AppColors.black),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: SvgPicture.asset(Assets.imagesBagIcon),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const HomeBannersCarousal(),
            SizedBox(height: 10.h),
            const HomeCategories(),
            SizedBox(height: 25.h),
            const SeeAllWidget(),
            SizedBox(height: 10.h),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: FruitsListView(),
            ),
          ],
        ),
      ),
    );
  }
}
