import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/data/models/category_model.dart';

import '../../../../core/utils/app_images.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({super.key});

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  final List<CategoryModel> categories = [
    CategoryModel(name: "Fruits", image: Assets.imagesFruitsIcon),
    CategoryModel(name: "Milk%eggs", image: Assets.imagesMilkEggIcon),
    CategoryModel(name: "Beverages", image: Assets.imagesBeveragesIcon),
    CategoryModel(name: "Laundry", image: Assets.imagesLaundryIcon),
    CategoryModel(name: "Vegetables", image: Assets.imagesVegetablesIcon),
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
