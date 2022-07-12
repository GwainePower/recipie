import 'package:flutter/material.dart';

import './screen_builder.dart';

abstract class RouteNames {
  static const homeScreen = '/home';
  static const accountScreen = '/home/account';
  static const categoriesScreen = '/home/categories';
  static const recipesListScreen = '/recipes-list';
  static const recipeDetailsScreen = '/recipe-details';
}

class MainNavigation {
  static final _screenBuilder = ScreenBuilder();

  final routes = <String, Widget Function(BuildContext)>{
    RouteNames.homeScreen: (_) => _screenBuilder.buildHomeScreen(),
    RouteNames.categoriesScreen: (_) => _screenBuilder.buildCategoriesScreen(),
    RouteNames.recipesListScreen: (_) =>
        _screenBuilder.buildRecipesListScreen(),
    RouteNames.recipeDetailsScreen: (_) =>
        _screenBuilder.buildRecipeDetailsScreen(),
  };
}
