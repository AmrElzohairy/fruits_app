import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/data/models/category_model.dart';
import 'package:fruits_app/features/home/presentation/views/widgets/category_item.dart';

import '../../../../../core/utils/app_images.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({super.key});

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  final List<CategoryModel> categories = [
    CategoryModel(name: "Fruits", image: Assets.imagesFruitsIcon),
    CategoryModel(name: "Milk & eggs", image: Assets.imagesMilkIcon),
    CategoryModel(name: "Beverages", image: Assets.imagesBeverages),
    CategoryModel(name: "Laundry", image: Assets.imagesLaundry),
    CategoryModel(name: "Vegetables", image: Assets.imagesVegetables),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: categories.length - 1 == index ? 10 : 0,
            ),
            child: CategoryItem(
              image: categories[index].image,
              name: categories[index].name,
            ),
          ),
        ),
      ),
    );
  }
}
