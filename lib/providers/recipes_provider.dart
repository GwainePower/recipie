import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/recipe.dart';
import '../data/parse_repo/recipes_repo.dart';

final _repositoryProvider = Provider<RecipesRepo>((ref) => RecipesRepo());

final _recipesFetcherProvider = FutureProvider.family<List<Recipe>, String>(
  (ref, categoryId) async {
    final repo = ref.watch(_repositoryProvider);
    List<Recipe> result = [];
    final unparsedRecipes = await repo.getRecipesByCategory(categoryId);
    for (var recipe in unparsedRecipes) {
      result.add(Recipe.fromParseObject(recipe));
    }
    return result;
  },
);

class RecipesNotifier extends StateNotifier<List<Recipe>> {
  RecipesNotifier() : super([]);

  void addRecipe(Recipe recipe) {
    // Для иммутабельных моделей и иммутабельного провайдера мы создаем НОВЫЙ
    // список с добавленным объектом к остальным, но не добавляем через add
    // как обычно это делали со списками
    state = [...state, recipe];
    // Нет необходимости вызывать "notifyListeners". Вызывая "state ="
    // провайдер автоматически перерисует интерфейс если понадобится
    // TODO: добавить импорт добавленного рецепта на сервер
  }

  Future<void> fetchRecipes(List<Recipe> recipes) async {
    // TODO: подключить парсинг рецептов с сервера
    state = [...recipes];
  }

  void removeRecipe(String recipeId) {
    // Снова же,создаем просто НОВЫЙ список, но без того рецепта, который хотим удалить
    state = [
      for (final recipe in state)
        if (recipe.objectId != recipeId) recipe,
    ];
  }

  void removeAllRecipes() => state = [];

  void toggleFavorite(String recipeId) {
    for (final recipe in state) {
      if (recipe.objectId == recipeId) {
        recipe.copyWith(isFavorite: !recipe.isFavorite);
      } else {
        recipe;
      }
    }
  }
}
