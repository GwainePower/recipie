import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipie/providers/categories_provider.dart';
import 'package:recipie/ui/widgets/recipes/recipes_list.dart';

import '../../constants/strings.dart';

class RecipesListScreen extends ConsumerWidget {
  const RecipesListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryId = ModalRoute.of(context)!.settings.arguments as String;
    final categoryName =
        ref.watch(categoriesProvider.notifier).getById(categoryId).title;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryId == '' ? Strings.recipesScreenName : categoryName,
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(color: const Color.fromARGB(255, 65, 65, 65)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: RecipesList(categoryId),
    );
  }
}
