import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  const Recipe._();
  const factory Recipe({
    required String? id,
    String? userId,
    required String categoryId,
    required String title,
    required int cookTime,
    required int kcal,
    required List<String> ingredients,
    required List<String> steps,
    required String pictureUrl,
    @Default(false) bool isFavorite,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
