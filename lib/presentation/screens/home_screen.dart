import 'package:flutter/material.dart';

import '../../constants/strings.dart';

import '../../data/api_repository.dart';

import '../widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiRepository apiRepository = ApiRepository();
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
              onPressed: () => apiRepository.getCategories(),
              child: const Text(
                whatInFridgeString,
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
              fridgeImage,
              scale: 0.8,
              filterQuality: FilterQuality.high,
            ),
          ],
        ),
      ),
    );
  }
}
