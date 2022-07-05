import 'package:flutter/material.dart';
import 'package:recipie/ui/widgets/recipes/recipes_list.dart';

class MealRecipesListScreen extends StatelessWidget {
  const MealRecipesListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryId == '' ? 'Рецепты' : categoryId),
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
