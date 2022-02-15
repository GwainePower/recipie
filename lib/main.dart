import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import 'constants/strings.dart';

import 'presentation/screens/home_screen.dart';
import 'presentation/screens/categories_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const String _keyApplicationId = 'czcHXk5ByMwu3LFitCFZqvUFPqeXT7nyE4Pgcz2w';
  const String _keyClientKey = 'Rmi4Xee0va4JA7DebowzuwQtDCshYLG4d6YSdTy9';
  const String _keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(_keyApplicationId, _keyParseServerUrl,
      clientKey: _keyClientKey, autoSendSessionId: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: montserratFont,
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: montserratFont,
              fontSize: 24,
            ),
            color: Color(0x00ffffff),
            iconTheme: IconThemeData(color: Colors.black87),
            actionsIconTheme: IconThemeData(color: Colors.black87),
            elevation: 0,
          ),
          textTheme: const TextTheme()),
      home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        categoriesScreenRoute: (ctx) => const CategoriesScreen(),
        // recipesListRoute: (ctx) => const RecipesListScreen(),
      },
    );
  }
}
