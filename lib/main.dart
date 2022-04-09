import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../presentation/app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const String _keyApplicationId = 'czcHXk5ByMwu3LFitCFZqvUFPqeXT7nyE4Pgcz2w';
  const String _keyClientKey = 'Rmi4Xee0va4JA7DebowzuwQtDCshYLG4d6YSdTy9';
  const String _keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(_keyApplicationId, _keyParseServerUrl,
      clientKey: _keyClientKey, autoSendSessionId: true);

  runApp(const MyApp());
}
