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
  final String pictureUrl;
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
    required this.pictureUrl,
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
    String? pictureUrl,
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
      pictureUrl: pictureUrl ?? this.pictureUrl,
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
        other.pictureUrl == pictureUrl &&
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
        pictureUrl.hashCode ^
        tags.hashCode ^
        isFavorite.hashCode;
  }

  factory Recipe.fromParseObject(ParseObject parseObject) {
    return Recipe(
      categoryIds: parseObject.get<List<String>>('categoryIds') ?? [],
      title: parseObject.get<String>('title') ?? '',
      cookTime: parseObject.get<int>('cookTime') ?? 0,
      kcal: parseObject.get<int>('kcal') ?? 0,
      ingredients: List<RecipeIngredient>.from(parseObject
          .get<List<Map<String, dynamic>>>('ingredients')!
          .map((e) => RecipeIngredient.fromMap(e))),
      steps: parseObject.get<List<String>>('steps') ?? [],
      pictureUrl: parseObject.get('pictureUrl'),
      tags: parseObject.get<List<String>>('tags') ?? [],
    );
    // TODO: Разобраться с парсингом ингредиентов, тегов т.к. на парсе это просто наборы строк
    // TODO: Тэги надо вначале кешировать, так как в рецепте они только айдишками идут. Нужен метод
  }
}
