import 'package:flutter/material.dart';

class MealRecipesListScreen extends StatelessWidget {
  final String categoryId;
  const MealRecipesListScreen({
    Key? key,
    this.categoryId = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryId == '' ? 'Рецепты' : 'Рецепты: $categoryId'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      // body: Column(children: [Text('Рецептов: '), ListView.builder(itemBuilder: (context, index) => ,)]),
    );
  }
}
