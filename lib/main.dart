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
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.grey[300],
          brightness: Brightness.light,
          textTheme: Typography.material2018().black,
          iconTheme: const IconThemeData(color: Colors.black87),
          actionsIconTheme: const IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
