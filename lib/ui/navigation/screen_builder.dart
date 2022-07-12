import 'package:flutter/material.dart';

import '../screens/account_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/home_screen.dart';
import '../screens/recipe_details_screen.dart';
import '../screens/recipes_list_screen.dart';

class ScreenBuilder {
  Widget buildHomeScreen() {
    return const HomeScreen();
  }

  Widget buildCategoriesScreen() {
    return const CategoriesScreen();
  }

  Widget buildRecipesListScreen() {
    return const RecipesListScreen();
  }

  Widget buildRecipeDetailsScreen() {
    return const RecipeDetailsScreen();
  }

  Widget buildAccountScreen() {
    return const AccountScreen();
  }
}
