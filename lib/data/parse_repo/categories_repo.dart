import 'package:parse_server_sdk/parse_server_sdk.dart';
import '../models/API/parse_repo_model.dart';

import '../models/Errors/parse_exception.dart';

class CategoriesRepo extends ParseRepoModel {
  @override
  Future<List<ParseObject>> getData() async {
    QueryBuilder<ParseObject> queryCategory =
        QueryBuilder<ParseObject>(ParseObject('Category'));
    final ParseResponse response = await queryCategory.query();

    if (response.success && response.results != null) {
      return response.results as List<ParseObject>;
    } else {
      print('Не удалось загрузить список категорий');
      return [];
      // throw ParseException(
      //     'Не удалось загрузить список категорий, код ошибки ${response.statusCode}');
    }
  }
}
