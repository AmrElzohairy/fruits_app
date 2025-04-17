import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/home/presentation/widgets/fruit_item.dart';

class FruitsListView extends StatelessWidget {
  const FruitsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235.h,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const FruitItem();
        },
      ),
    );
  }
}
