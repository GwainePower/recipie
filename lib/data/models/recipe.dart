import 'package:flutter/foundation.dart';

class Recipe {
  final String? id;
  final String? userId;
  final List<String> categoryIds;
  final String title;
  final int cookTime;
  final int kcal;
  final List<String> ingredients;
  final List<String> steps;
  final String pictureUrl;
  bool isFavorite;

  Recipe({
    this.id,
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Recipe &&
        other.id == id &&
        other.userId == userId &&
        listEquals(other.categoryIds, categoryIds) &&
        other.title == title &&
        other.cookTime == cookTime &&
        other.kcal == kcal &&
        listEquals(other.ingredients, ingredients) &&
        listEquals(other.steps, steps) &&
        other.pictureUrl == pictureUrl &&
        other.isFavorite == isFavorite;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        categoryIds.hashCode ^
        title.hashCode ^
        cookTime.hashCode ^
        kcal.hashCode ^
        ingredients.hashCode ^
        steps.hashCode ^
        pictureUrl.hashCode ^
        isFavorite.hashCode;
  }
}
