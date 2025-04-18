import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/features/home/data/models/fruit_model.dart';
import 'package:fruits_app/features/home/presentation/widgets/fruit_item.dart';

class FruitsListView extends StatefulWidget {
  const FruitsListView({super.key});

  @override
  State<FruitsListView> createState() => _FruitsListViewState();
}

class _FruitsListViewState extends State<FruitsListView> {
  final List<FruitModel> fruits = [
    FruitModel(
      name: "Banana",
      image: Assets.imagesBanana,
      price: "2.5",
      rate: 4.5,
      rateCount: 100,
    ),
    FruitModel(
      name: "Pepper",
      image: Assets.imagesPepper,
      price: "1.2",
      rate: 4.0,
      rateCount: 80,
    ),
    FruitModel(
      name: "Orange",
      image: Assets.imagesOrange,
      price: "3.0",
      rate: 4.8,
      rateCount: 120,
    ),
    FruitModel(
      name: "Pineapple",
      image: Assets.imagesPineapple,
      price: "2.5",
      rate: 4.5,
      rateCount: 100,
    ),
    FruitModel(
      name: "Watermelon",
      image: Assets.imagesWatermelon,
      price: "2.5",
      rate: 4.5,
      rateCount: 100,
    ),
    FruitModel(
      name: "Avocado",
      image: Assets.imagesAvocado,
      price: "2.5",
      rate: 4.5,
      rateCount: 100,
    ),
        FruitModel(
      name: "Strawberry",
      image: Assets.imagesStrawberry,
      price: "2.5",
      rate: 4.5,
      rateCount: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235.h,
      child: ListView.builder(
        itemCount: fruits.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FruitItem(fruit: fruits[index]);
        },
      ),
    );
  }
}
