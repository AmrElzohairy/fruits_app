import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_images.dart';

class HomeBannersCarousal extends StatelessWidget {
  const HomeBannersCarousal({super.key});

  final List<String> banners = const [
    Assets.imagesSlider1,
    Assets.imagesSlider2,
    Assets.imagesSlider3,
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: banners.length,
      itemBuilder:
          (BuildContext context, int itemIndex, int pageViewIndex) => ClipRRect(
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
    );
  }
}
