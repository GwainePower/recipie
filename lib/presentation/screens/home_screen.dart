import 'package:flutter/material.dart';
import 'package:recipie/constants/strings.dart';

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
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Divider(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Что у вас есть в холодильнике?',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: montserratFont,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Image.asset(
              'assets/images/fridge.png',
              scale: 0.8,
              filterQuality: FilterQuality.high,
            ),
          ],
        ),
      ),
    );
  }
}
