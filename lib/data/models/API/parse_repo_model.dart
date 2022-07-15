import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class ParseRepoModel {
  Future<List<ParseObject>> getData([String optional]);
}
