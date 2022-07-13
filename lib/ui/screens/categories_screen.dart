import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipie/providers/categories_provider.dart';
import 'package:recipie/ui/widgets/categories/categories_grid.dart';

import '../../constants/strings.dart';

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        iconTheme: IconTheme.of(context).copyWith(color: Colors.white),
        foregroundColor: Colors.white,
        title: const Text(Strings.categoriesMenuName),
      ),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.read(categoriesProvider.notifier).fetchCategories(),
        child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            child: const CategoriesGrid()),
      ),
    );
  }
}
