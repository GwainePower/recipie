import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipie/constants/strings.dart';
import 'package:recipie/ui/widgets/recipe_details/leading_bullet.dart';
import 'package:recipie/ui/widgets/recipe_details/upper_body.dart';
import 'package:recipie/ui/widgets/recipes/favorite_button.dart';

import '../../providers/recipes_provider.dart';

class RecipeDetailsScreen extends ConsumerWidget {
  const RecipeDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(selectedRecipeProvider.notifier).state!;
    const Color backUpperColor = Color.fromARGB(255, 201, 201, 201);
    const Color textColor = Color.fromARGB(255, 65, 65, 65);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
            floating: true,
            actions: [
              FavoriteButton(isFavorite: recipe.isFavorite),
            ],
          ),
          SliverToBoxAdapter(
            child: UpperBody(
              recipeTitle: recipe.title,
              recipeCookTime: recipe.cookTime,
              recipeCalories: recipe.kcal,
              recipePicture: recipe.picture,
              bodyColor: backUpperColor,
              textColor: textColor,
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              bottom: 10,
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                Strings.ingredients,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
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
                  childCount: recipe.ingredients.length),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              bottom: 10,
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                Strings.cookSteps,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        dense: true,
                        horizontalTitleGap: 0,
                        minLeadingWidth: 20,
                        visualDensity: VisualDensity.compact,
                        leading: const LeadingBullet(
                          color: textColor,
                          sizePix: 8,
                        ),
                        title: Text(
                          recipe.steps[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                  childCount: recipe.steps.length),
            ),
          ),
        ],
      ),
    );
  }
}
