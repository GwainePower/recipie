import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('Тут будет главный экран'),
      ),
    );
  }
}
