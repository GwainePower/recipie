import 'package:flutter/material.dart';

import '../screens/account_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/home_screen.dart';
import '../screens/meal_recipe_screen.dart';
import '../screens/meal_recipes_list_screen.dart';

class ScreenBuilder {
  Widget buildHomeScreen() {
    return const HomeScreen();
  }

  Widget buildCategoriesScreen() {
    return const CategoriesScreen();
  }

  Widget buildMealRecipesListScreen() {
    return const MealRecipesListScreen();
  }

  Widget buildMealRecipeScreen(String recipeId) {
    return MealRecipeScreen(recipeId: recipeId);
  }

  Widget buildAccountScreen() {
    return const AccountScreen();
  }
}
