import 'package:flutter/material.dart';

class RecipeDetailsScreen extends StatelessWidget {
  const RecipeDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipeId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipeId),
      ),
      body: const Text('Recipe details'),
    );
  }
}
