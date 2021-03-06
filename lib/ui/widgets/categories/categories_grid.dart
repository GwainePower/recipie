import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../providers/categories_provider.dart';

import '../error_centered.dart';
import '../loading_widget.dart';
import './categories_grid_item.dart';

class CategoriesGrid extends ConsumerWidget {
  const CategoriesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);
    return categories.when(
      data: (loadedCategories) => Center(
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: loadedCategories.length,
          itemBuilder: (context, index) => CategoriesGridItem(
            category: loadedCategories[index],
            textColor: Colors.white,
          ),
        ),
      ),
      error: (error, _) => ErrorCentered(
        errorText: error.toString(),
      ),
      loading: () => const LoadingWidget(
        indicatorColor: Colors.white,
      ),
    );
  }
}
