import 'dart:convert';

import 'package:flutter/foundation.dart';

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

  Map<String, dynamic> toMap() {
    return {
      'objectId': objectId,
      'userId': userId,
      'categoryIds': categoryIds,
      'title': title,
      'cookTime': cookTime,
      'kcal': kcal,
      'ingredients': ingredients.map((x) => x.toMap()).toList(),
      'steps': steps,
      'pictureUrl': pictureUrl,
      'tags': tags,
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
      ingredients: List<RecipeIngredient>.from(
          map['ingredients']?.map((x) => RecipeIngredient.fromMap(x))),
      steps: List<String>.from(map['steps']),
      pictureUrl: map['pictureUrl'] ?? '',
      tags: List<String>.from(map['tags']),
      isFavorite: map['isFavorite'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) => Recipe.fromMap(json.decode(source));
}
