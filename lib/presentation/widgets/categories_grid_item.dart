import 'package:flutter/material.dart';

import 'package:recipie/data/models/category.dart';

class CategoriesGridItem extends StatelessWidget {
  final Category category;
  final Color textColor;

  const CategoriesGridItem({
    Key? key,
    required this.category,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Нажали ${category.title}'),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(category.image),
            const SizedBox(height: 5),
            Text(
              category.title,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
