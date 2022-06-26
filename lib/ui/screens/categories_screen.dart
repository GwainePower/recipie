import 'package:flutter/material.dart';
import 'package:recipie/ui/widgets/categories/categories_grid.dart';

import '../../constants/strings.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        iconTheme: IconTheme.of(context).copyWith(color: Colors.white),
        foregroundColor: Colors.white,
        title: const Text(Strings.categoriesMenuName),
      ),
      body: const CategoriesGrid(),
    );
  }
}
