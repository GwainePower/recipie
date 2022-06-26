import 'package:flutter/material.dart';

import 'package:recipie/data/models/recipe.dart';

class RecipesListItem extends StatelessWidget {
  final Recipe recipeItem;
  const RecipesListItem({
    Key? key,
    required this.recipeItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.75,
      height: screenSize.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(children: [
        Image.network(recipeItem.pictureUrl),
        Text(recipeItem.title),
      ]),
    );
  }
}
