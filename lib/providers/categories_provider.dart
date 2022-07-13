// Какое то безумие с глобальными переменными, но вроде я понял

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/category.dart';
import '../data/parse_repo/categories_repo.dart';

final _repositoryProvider = Provider<CategoriesRepo>(
  (ref) => CategoriesRepo(),
);

final categoryProvider = FutureProvider.autoDispose<List<Category>>(
  (ref) async {
    final repo = ref.watch(_repositoryProvider);
    List<Category> result = [];
    final unparsedCategories = await repo.getData();
    for (var category in unparsedCategories) {
      result.add(Category.fromParseObject(category));
    }
    return result;
  },
);

final categoriesProvider = StateNotifierProvider.autoDispose<CategoriesNotifier,
    AsyncValue<List<Category>>>((ref) => CategoriesNotifier(CategoriesRepo()));

class CategoriesNotifier extends StateNotifier<AsyncValue<List<Category>>> {
  final CategoriesRepo _categoriesRepo;
  CategoriesNotifier(this._categoriesRepo) : super(const AsyncValue.loading()) {
    fetchCategories();
  }

  bool _isLoading = false;

  Future<void> fetchCategories() async {
    if (_isLoading) return;
    state = const AsyncValue.loading();
    final loadedCategories = [];
    try {
      final parseObjects = await _categoriesRepo.getData();
      for (var object in parseObjects) {
        loadedCategories.add(Category.fromParseObject(object));
      }
      state = AsyncValue.data([...loadedCategories]);
    } catch (e) {
      print(e);
      state = AsyncValue.error(e);
    } finally {
      _isLoading = false;
    }
  }

  Category getById(String categoryId) =>
      state.value!.firstWhere((category) => category.objectId == categoryId);
}
