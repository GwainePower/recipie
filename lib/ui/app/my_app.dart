import 'package:flutter/material.dart';

import '../../constants/strings.dart';

import '../navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  static final _mainNavigation = MainNavigation();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: Strings.montserratFont,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: Strings.montserratFont,
            fontSize: 24,
          ),
          color: Color(0x00ffffff),
          iconTheme: IconThemeData(color: Colors.black87),
          actionsIconTheme: IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
        textTheme: const TextTheme(),
      ),
      initialRoute: RouteNames.homeScreen,
      routes: _mainNavigation.routes,
      onGenerateRoute: _mainNavigation.onGenerateRoute,
    );
  }
}
