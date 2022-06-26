import 'package:flutter/material.dart';

import '../../constants/strings.dart';

import '../widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
              height: screenSize.height * 0.05,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                Strings.whatInFridge,
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: Strings.montserratFont,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.15,
            ),
            Image.asset(
              Strings.fridgeImage,
              scale: 0.8,
              filterQuality: FilterQuality.high,
            ),
          ],
        ),
      ),
    );
  }
}
