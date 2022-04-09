import 'package:flutter/material.dart';

import '../../constants/strings.dart';

import '../screens/categories_screen.dart';
import '../screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
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
