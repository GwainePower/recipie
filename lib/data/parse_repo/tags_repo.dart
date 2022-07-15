import 'package:parse_server_sdk/parse_server_sdk.dart';
import '../models/API/parse_repo_model.dart';

import '../models/Errors/parse_exception.dart';

class TagsRepo implements ParseRepoModel {
  @override
  Future<List<ParseObject>> getData([String? optional]) async {
    QueryBuilder<ParseObject> queryCategory =
        QueryBuilder<ParseObject>(ParseObject('Tags'));
    final ParseResponse response = await queryCategory.query();

    if (response.success && response.results != null) {
      return response.results as List<ParseObject>;
    } else {
      print('Не удалось загрузить список тегов');
      return [];
      // throw ParseException(
      //     'Не удалось загрузить список тегов, код ошибки ${response.statusCode}');
    }
  }
}
