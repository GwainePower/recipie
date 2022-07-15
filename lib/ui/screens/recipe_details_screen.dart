import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipie/providers/recipes_provider.dart';

class RecipeDetailsScreen extends ConsumerWidget {
  const RecipeDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(selectedRecipeProvider.notifier).state!;
    const Color backUpperColor = Color.fromARGB(255, 201, 201, 201);
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backUpperColor,
      appBar: AppBar(
        title: Text(
          recipe.title,
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(color: const Color.fromARGB(255, 65, 65, 65)),
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 1,
                child: Container(
                  color: Colors.white,
                  width: deviceSize.width,
                  height: deviceSize.height,
                ),
              ),
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                decoration: const BoxDecoration(
                  color: backUpperColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
              ),
              Positioned(
                right: deviceSize.width * 0.05,
                top: deviceSize.height * 0.06,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          color: Colors.black,
                          spreadRadius: 0,
                          offset: Offset(4, 8))
                    ],
                  ),
                  child: CircleAvatar(
                    radius: deviceSize.width * 0.3,
                    backgroundImage: NetworkImage(recipe.picture),
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
