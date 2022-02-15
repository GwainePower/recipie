import 'dart:convert';

import 'recipe_ingredient.dart';

class Recipe {
  final String? objectId;
  final String? userId;
  final List<String> categoryIds;
  final String title;
  final int cookTime;
  final int kcal;
  final RecipeIngredient ingredients;
  final List<String> steps;
  final String pictureUrl;
  bool isFavorite;

  Recipe({
    this.objectId,
    this.userId,
    required this.categoryIds,
    required this.title,
    required this.cookTime,
    required this.kcal,
    required this.ingredients,
    required this.steps,
    required this.pictureUrl,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'objectId': objectId,
      'userId': userId,
      'categoryIds': categoryIds,
      'title': title,
      'cookTime': cookTime,
      'kcal': kcal,
      'ingredients': ingredients.toMap(),
      'steps': steps,
      'pictureUrl': pictureUrl,
      'isFavorite': isFavorite,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      objectId: map['objectId'],
      userId: map['userId'],
      categoryIds: List<String>.from(map['categoryIds']),
      title: map['title'] ?? '',
      cookTime: map['cookTime']?.toInt() ?? 0,
      kcal: map['kcal']?.toInt() ?? 0,
      ingredients: RecipeIngredient.fromMap(map['ingredients']),
      steps: List<String>.from(map['steps']),
      pictureUrl: map['pictureUrl'] ?? '',
      isFavorite: map['isFavorite'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) => Recipe.fromMap(json.decode(source));

  Recipe copyWith({
    String? objectId,
    String? userId,
    List<String>? categoryIds,
    String? title,
    int? cookTime,
    int? kcal,
    RecipeIngredient? ingredients,
    List<String>? steps,
    String? pictureUrl,
    bool? isFavorite,
  }) {
    return Recipe(
      objectId: objectId ?? this.objectId,
      userId: userId ?? this.userId,
      categoryIds: categoryIds ?? this.categoryIds,
      title: title ?? this.title,
      cookTime: cookTime ?? this.cookTime,
      kcal: kcal ?? this.kcal,
      ingredients: ingredients ?? this.ingredients,
      steps: steps ?? this.steps,
      pictureUrl: pictureUrl ?? this.pictureUrl,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
