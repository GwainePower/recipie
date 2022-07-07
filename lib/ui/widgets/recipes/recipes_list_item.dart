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
    const double imageBorderRadius = 20;
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Stack(
        children: <Widget>[
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(recipeItem.picture),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(imageBorderRadius),
            ),
          ),
          Positioned(
            right: 0,
            top: screenSize.height * 0.05,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              child: Text(
                recipeItem.title,
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: screenSize.width,
              height: screenSize.height * 0.08,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(imageBorderRadius),
                  bottomRight: Radius.circular(imageBorderRadius),
                ),
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
