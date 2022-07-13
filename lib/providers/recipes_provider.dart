import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/Errors/recipes_provider_exception.dart';
import '../data/models/recipe.dart';
import '../data/parse_repo/recipes_repo.dart';

final _recipesRepoProvider = Provider<RecipesRepo>((ref) => RecipesRepo());

final recipesByCategoryProvider = FutureProvider.family
    .autoDispose<List<Recipe>, String>((ref, categoryId) async {
  final recipesRepo = ref.watch(_recipesRepoProvider);
  final List<Recipe> recipes = [];
  try {
    final parseObjects = await recipesRepo.getRecipesByCategory(categoryId);
    // print('достать получилось, далее');
    for (var object in parseObjects) {
      recipes.add(Recipe.fromParseObject(object));
    }
    return recipes;
  } catch (e) {
    print('При парсинге возникла ошибка - $e');
    return [];
  }
});

final recipesProvider = StateNotifierProvider<RecipesNotifier, List<Recipe>>(
  (ref) => RecipesNotifier(RecipesRepo()),
);

class RecipesNotifier extends StateNotifier<List<Recipe>> {
  final RecipesRepo recipesRepo;
  RecipesNotifier(
    this.recipesRepo,
  ) : super([]);

  bool _isLoading = false;

  void addRecipe(Recipe recipe) {
    // Для иммутабельных моделей и иммутабельного провайдера мы создаем НОВЫЙ
    // список с добавленным объектом к остальным, но не добавляем через add
    // как обычно это делали со списками
    state = [...state, recipe];
    // Нет необходимости вызывать "notifyListeners". Вызывая "state ="
    // провайдер автоматически перерисует интерфейс если понадобится
    // TODO: добавить импорт добавленного рецепта на сервер
  }

  Future<void> fetchRecipesByCategory(String categoryId) async {
    if (_isLoading) return;

    final fetchedRecipes = [];

    _isLoading = true;

    try {
      final parseObjects = await recipesRepo.getRecipesByCategory(categoryId);
      for (var object in parseObjects) {
        fetchedRecipes.add(Recipe.fromParseObject(object));
      }
      state = [...fetchedRecipes];
    } on RecipesProviderException catch (e) {
      print(e.toString());
      state = [...state];
    } finally {
      _isLoading = false;
    }
  }

  Recipe findById(String recipeId) =>
      state.firstWhere((recipe) => recipe.objectId == recipeId);

  void removeRecipe(String recipeId) {
    // Снова же,создаем просто НОВЫЙ список, но без того рецепта, который хотим удалить
    state = [
      for (final recipe in state)
        if (recipe.objectId != recipeId) recipe,
    ];
  }

  void removeAllRecipes() => state = [];

  void toggleFavorite(String recipeId) {
    final changeIndex =
        state.indexWhere((recipe) => recipe.objectId == recipeId);
    state[changeIndex].copyWith(isFavorite: !state[changeIndex].isFavorite);
    // for (final recipe in state) {
    //   if (recipe.objectId == recipeId) {
    //     recipe.copyWith(isFavorite: !recipe.isFavorite);
    //   } else {
    //     recipe;
    //   }
    // }
  }
}
