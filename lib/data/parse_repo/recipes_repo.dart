import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import '../models/API/parse_repo_model.dart';

import '../models/Errors/parse_exception.dart';

class RecipesRepo extends ParseRepoModel {
  @override
  Future<List<ParseObject>> getData([String? optional]) async {
    QueryBuilder<ParseObject> queryRecipe =
        QueryBuilder<ParseObject>(ParseObject('Recipe'));

    if (optional != null) {
      queryRecipe.whereContains('categoryIds', optional);
    }

    final ParseResponse response = await queryRecipe.query();

    if (response.success && response.results != null) {
      return response.results as List<ParseObject>;
    } else {
      print('Не удалось загрузить список рецептов');
      throw ParseException(
          'Не удалось загрузить список рецептов, код ошибки ${response.statusCode}');
    }
  }

  // Future<List<ParseObject>> getRecipesByCategory(String categoryId) async {
  //   final QueryBuilder<ParseObject> recipeByCategoryQuery =
  //       QueryBuilder<ParseObject>(ParseObject('Recipe'));
  //   recipeByCategoryQuery.whereContains('categoryIds', categoryId);

  //   final ParseResponse response = await recipeByCategoryQuery.query();

  //   if (response.success && response.results != null) {
  //     // print(response.results.toString());
  //     return response.results as List<ParseObject>;
  //   } else {
  //     print('Не удалось загрузить список рецептов');
  //     return [];
  //     // throw ParseException(
  //     //     'Не удалось загрузить список рецептов, код ошибки ${response.statusCode}');
  //   }
  // }
}
