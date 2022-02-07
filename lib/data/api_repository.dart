import 'package:parse_server_sdk/parse_server_sdk.dart';

class ApiRepository {
  Future<List<ParseObject>> getCategories() async {
    QueryBuilder<ParseObject> queryCategory =
        QueryBuilder<ParseObject>(ParseObject('Category'));
    final ParseResponse response = await queryCategory.query();

    if (response.success && response.results != null) {
      print(response.results.toString());
      return response.results as List<ParseObject>;
    } else {
      print('Ничего :(');
      return [];
    }
  }
}
