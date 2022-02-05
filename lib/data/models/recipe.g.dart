// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      categoryId: json['categoryId'] as String,
      title: json['title'] as String,
      cookTime: json['cookTime'] as int,
      kcal: json['kcal'] as int,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      steps: (json['steps'] as List<dynamic>).map((e) => e as String).toList(),
      pictureUrl: json['pictureUrl'] as String,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'cookTime': instance.cookTime,
      'kcal': instance.kcal,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'pictureUrl': instance.pictureUrl,
      'isFavorite': instance.isFavorite,
    };
