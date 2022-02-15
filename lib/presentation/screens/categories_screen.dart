import 'package:flutter/material.dart';
import 'package:recipie/data/models/category.dart';
import 'package:recipie/presentation/widgets/categories_grid_item.dart';

import '../../constants/strings.dart';
import '../../constants/dummy_models.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: ДОБАВИТЬ БИЗНЕС-ЛОГИКУ
    final List<Category> categories = [];
    for (var categoryItem in dummyCategory) {
      categories.add(
        Category(
          objectId: categoryItem['objectId']!,
          title: categoryItem['title']!,
          image: categoryItem['image']!,
        ),
      );
    }
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        iconTheme: IconTheme.of(context).copyWith(color: Colors.white),
        foregroundColor: Colors.white,
        title: const Text(categoriesMenuName),
      ),
      body: Center(
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) => CategoriesGridItem(
            category: categories[index],
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
