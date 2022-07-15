import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:recipie/data/models/recipe.dart';
import 'package:recipie/providers/recipes_provider.dart';
import 'package:recipie/ui/navigation/main_navigation.dart';
import 'package:recipie/ui/widgets/recipes/iconized_info.dart';

class RecipesListItem extends ConsumerWidget {
  final Recipe recipeItem;
  const RecipesListItem({
    Key? key,
    required this.recipeItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double imageBorderRadius = 20;
    const double horizMarginMod = 0.04;
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        bottom: screenSize.height * 0.03,
        left: screenSize.width * horizMarginMod,
        right: screenSize.width * horizMarginMod,
      ),
      child: Stack(
        children: <Widget>[
          InkWell(
            onTap: () => onTapEvent(ref, context),
            child: Container(
              height: screenSize.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(recipeItem.picture),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(imageBorderRadius),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: screenSize.height * 0.05,
            child: InkWell(
              onTap: () => onTapEvent(ref, context),
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
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: screenSize.width * (1 - horizMarginMod * 2),
              height: screenSize.height * 0.08,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(imageBorderRadius),
                  bottomRight: Radius.circular(imageBorderRadius),
                ),
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconizedInfo(
                    value: recipeItem.cookTime,
                    infoType: InfoType.time,
                  ),
                  IconizedInfo(
                    value: recipeItem.kcal,
                    infoType: InfoType.kcal,
                  ),
                  IconButton(
                    onPressed: () {
                      // TODO: Добавить функционал "Избранного"
                    },
                    icon: recipeItem.isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTapEvent(WidgetRef ref, BuildContext context) {
    ref.read(selectedRecipeProvider.notifier).state = recipeItem;
    Navigator.of(context).pushNamed(RouteNames.recipeDetailsScreen);
  }
}
