import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipie/providers/recipes_provider.dart';

class RecipeDetailsScreen extends ConsumerWidget {
  const RecipeDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(selectedRecipeProvider.notifier).state!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipe.title,
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(color: const Color.fromARGB(255, 65, 65, 65)),
        ),
      ),
      body: Image.network(recipe.picture),
    );
  }
}
