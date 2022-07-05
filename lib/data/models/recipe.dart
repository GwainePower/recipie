import 'package:flutter/foundation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'recipe_ingredient.dart';

class Recipe {
  final String? objectId;
  final String? userId;
  final List<String> categoryIds;
  final String title;
  final int cookTime;
  final int kcal;
  final List<RecipeIngredient> ingredients;
  final List<String> steps;
  final String picture;
  final List<String> tags;
  final bool isFavorite;

  const Recipe({
    this.objectId,
    this.userId,
    required this.categoryIds,
    required this.title,
    required this.cookTime,
    required this.kcal,
    required this.ingredients,
    required this.steps,
    required this.picture,
    required this.tags,
    this.isFavorite = false,
  });

  Recipe copyWith({
    String? objectId,
    String? userId,
    List<String>? categoryIds,
    String? title,
    int? cookTime,
    int? kcal,
    List<RecipeIngredient>? ingredients,
    List<String>? steps,
    String? picture,
    List<String>? tags,
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
      picture: picture ?? this.picture,
      tags: tags ?? this.tags,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Recipe &&
        other.objectId == objectId &&
        other.userId == userId &&
        listEquals(other.categoryIds, categoryIds) &&
        other.title == title &&
        other.cookTime == cookTime &&
        other.kcal == kcal &&
        listEquals(other.ingredients, ingredients) &&
        listEquals(other.steps, steps) &&
        other.picture == picture &&
        listEquals(other.tags, tags) &&
        other.isFavorite == isFavorite;
  }

  @override
  int get hashCode {
    return objectId.hashCode ^
        userId.hashCode ^
        categoryIds.hashCode ^
        title.hashCode ^
        cookTime.hashCode ^
        kcal.hashCode ^
        ingredients.hashCode ^
        steps.hashCode ^
        picture.hashCode ^
        tags.hashCode ^
        isFavorite.hashCode;
  }

  factory Recipe.fromParseObject(ParseObject parseObject) {
    return Recipe(
      categoryIds: List<String>.from(parseObject.get<List>('categoryIds')!),
      title: parseObject.get<String>('title') ?? '',
      cookTime: parseObject.get<int>('cookTime') ?? 0,
      kcal: parseObject.get<int>('kcal') ?? 0,
      ingredients: List<RecipeIngredient>.from(parseObject
          .get<List>('ingredients')!
          .map((e) => RecipeIngredient.fromMap(e))),
      steps: List<String>.from(parseObject.get<List>('steps')!),
      picture: parseObject.get('picture').url ?? '',
      tags: List<String>.from(parseObject.get<List>('tags')!),
    );
  }
}
