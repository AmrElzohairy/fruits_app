import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/home/presentation/logic/home_cart_cubit/home_cart_cubit.dart';

import '../../../../../core/utils/app_colors.dart';

class HomeCart extends StatelessWidget {
  const HomeCart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCartCubit, HomeCartState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            width: double.infinity,
            height: 60.h,
            padding: const EdgeInsets.all(10),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColors.secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 40,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 11,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: context.read<HomeCartCubit>().cartCount,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: CircleAvatar(
                          backgroundColor: AppColors.white,
                          radius: 25.r,
                          child: Image.asset(
                            context
                                .read<HomeCartCubit>()
                                .cartFruits[index]
                                .image,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      const VerticalDivider(),
                      SizedBox(width: 5.w),
                      Badge(
                        label: Text(
                          context.read<HomeCartCubit>().cartCount.toString(),
                          style: AppStyles.medium14Black.copyWith(
                            color: AppColors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                        child: SvgPicture.asset(
                          Assets.imagesBagIcon,
                          colorFilter: const ColorFilter.mode(
                            AppColors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
