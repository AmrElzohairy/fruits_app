import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<String> banners = const [
    Assets.imagesSlider1,
    Assets.imagesSlider2,
    Assets.imagesSlider3,
  ];
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
            CarouselSlider.builder(
              itemCount: banners.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(banners[itemIndex]),
                      ),
              options: CarouselOptions(
                aspectRatio: 383 / 222,
                viewportFraction: 0.82,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
