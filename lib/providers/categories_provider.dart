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
    final unparsedCategories = await repo.getCategories();
    for (var category in unparsedCategories) {
      result.add(Category.fromParseObject(category));
    }
    return result;
  },
);
