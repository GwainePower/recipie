import 'package:flutter/material.dart';

import 'presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          color: Color(0x00ffffff),
          iconTheme: IconThemeData(color: Colors.black87),
          actionsIconTheme: IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
