import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/categories_provider.dart';

import '../../constants/strings.dart';

import '../widgets/categories_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  Future<void> _refreshCategories(BuildContext context) async =>
      await context.read<CategoriesProvider>().fetchCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        iconTheme: IconTheme.of(context).copyWith(color: Colors.white),
        foregroundColor: Colors.white,
        title: const Text(categoriesMenuName),
      ),
      body: FutureBuilder(
          future: _refreshCategories(context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            } else {
              if (snapshot.error != null) {
                return Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Упс:',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          snapshot.error.toString(),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Center(
                  child: Consumer<CategoriesProvider>(
                    builder: (_, categoriesData, __) => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: categoriesData.items.length,
                      itemBuilder: (context, index) => CategoriesGridItem(
                        category: categoriesData.items[index],
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                );
              }
            }
          }),
    );
  }
}
