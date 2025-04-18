import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          Text("Fruits", style: AppStyles.semiBold16Black),
          const Spacer(),
          Text("See all", style: AppStyles.semiBold14Green),
        ],
      ),
    );
  }
}
