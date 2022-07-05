import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipie/ui/widgets/error_centered.dart';
import 'package:recipie/ui/widgets/loading_widget.dart';
import 'package:recipie/ui/widgets/recipes/recipes_list_item.dart';

import '../../../providers/recipes_provider.dart';

class RecipesList extends ConsumerWidget {
  const RecipesList(this.categoryId, {Key? key}) : super(key: key);
  final String categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipes = ref.watch(recipesByCategoryProvider(categoryId));
    return recipes.when(
        data: (loadedRecipes) => ListView.builder(
              itemCount: loadedRecipes.length,
              itemBuilder: (_, index) =>
                  RecipesListItem(recipeItem: loadedRecipes[index]),
            ),
        error: (error, _) => ErrorCentered(errorText: error.toString()),
        loading: () => const LoadingWidget());
  }
}
