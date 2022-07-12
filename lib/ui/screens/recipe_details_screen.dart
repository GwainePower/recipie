import 'package:flutter/material.dart';

class MealRecipeScreen extends StatelessWidget {
  const MealRecipeScreen({
    Key? key,
    required this.recipeId,
  }) : super(key: key);

  final String recipeId;

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
