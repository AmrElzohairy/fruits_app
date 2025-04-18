import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/home/presentation/logic/home_cart_cubit/home_cart_cubit.dart';
import 'package:fruits_app/features/home/presentation/views/widgets/fruits_list_view.dart';
import 'package:fruits_app/features/home/presentation/views/widgets/home_banners_carousal.dart';
import 'package:fruits_app/features/home/presentation/views/widgets/home_cart.dart';
import 'package:fruits_app/features/home/presentation/views/widgets/home_categories.dart';
import 'package:fruits_app/features/home/presentation/views/widgets/see_all_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCartCubit(),

      child: Scaffold(
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
              BlocBuilder<HomeCartCubit, HomeCartState>(
                builder: (context, state) {
                  return context.read<HomeCartCubit>().cartFruits.isNotEmpty
                      ? const HomeCart()
                      : const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
