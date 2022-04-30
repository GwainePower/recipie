import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:recipie/data/models/category.dart';
import 'package:recipie/data/parse_repo/categories_repo.dart';

import '../data/models/Errors/parse_exception.dart';

class CategoriesProvider with ChangeNotifier {
  final categoriesRepo = CategoriesRepo();
  List<Category> _categories = [];
  List<Category> get items => [..._categories];

  Future<void> fetchCategories() async {
    List<Category> parsedCategories = [];

    try {
      var unparsedCategories = await categoriesRepo.getCategories();
      for (var parsedCategory in unparsedCategories) {
        parsedCategories.add(Category.fromParseObject(parsedCategory));
      }
      print(parsedCategories.toString());
      _categories = parsedCategories;
    } on ParseException catch (e) {
      print(e);
      throw ParseException(e.toString());
    }
  }
}
