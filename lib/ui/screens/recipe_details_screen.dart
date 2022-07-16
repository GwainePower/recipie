import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipie/constants/strings.dart';
import 'package:recipie/ui/widgets/recipe_details/leading_bullet.dart';

import '../../providers/recipes_provider.dart';

import '../widgets/recipes/iconized_info.dart';

class RecipeDetailsScreen extends ConsumerWidget {
  const RecipeDetailsScreen({
    Key? key,
  }) : super(key: key);

  // TODO: добавить слайверы для красивой прокрутки
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(selectedRecipeProvider.notifier).state!;
    const Color backUpperColor = Color.fromARGB(255, 201, 201, 201);
    const Color textColor = Color.fromARGB(255, 65, 65, 65);
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backUpperColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Добавить функционал "Избранного"
            },
            icon: const Icon(Icons.favorite_border_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 1,
                child: Container(
                  color: Colors.white,
                  width: deviceSize.width,
                  height: deviceSize.height,
                ),
              ),
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                  color: backUpperColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        recipe.title,
                        softWrap: true,
                        textWidthBasis: TextWidthBasis.parent,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                            color: textColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.5,
                      height: 1,
                      decoration: const BoxDecoration(color: textColor),
                    ),
                    SizedBox(height: deviceSize.height * 0.12),
                    IconizedInfo(
                      value: recipe.cookTime,
                      infoType: InfoType.time,
                      color: textColor,
                    ),
                    SizedBox(height: deviceSize.height * 0.02),
                    IconizedInfo(
                      value: recipe.kcal,
                      infoType: InfoType.kcal,
                      color: textColor,
                    ),
                  ],
                ),
              ),
              Positioned(
                right: deviceSize.width * 0.05,
                top: deviceSize.height * 0.06,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          color: Colors.black,
                          spreadRadius: 0,
                          offset: Offset(4, 8))
                    ],
                  ),
                  child: CircleAvatar(
                    radius: deviceSize.width * 0.3,
                    backgroundImage: NetworkImage(recipe.picture),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    Strings.ingredients,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                  SizedBox(height: deviceSize.height * 0.02),
                  Expanded(
                    child: ListView.builder(
                      itemCount: recipe.ingredients.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        horizontalTitleGap: 0,
                        minLeadingWidth: 20,
                        visualDensity: VisualDensity.compact,
                        leading: const LeadingBullet(
                          color: textColor,
                          sizePix: 8,
                        ),
                        title: Text(
                          recipe.ingredients[index].ingrType,
                          style: const TextStyle(fontSize: 16),
                        ),
                        trailing: Text(recipe.ingredients[index].quantity),
                      ),
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
}
