import 'package:flutter/material.dart';

import '../recipes/iconized_info.dart';

class UpperBody extends StatelessWidget {
  final String recipeTitle;
  final int recipeCookTime;
  final int recipeCalories;
  final String recipePicture;
  final Color bodyColor;
  final Color textColor;
  const UpperBody({
    Key? key,
    required this.recipeTitle,
    required this.recipeCookTime,
    required this.recipeCalories,
    required this.recipePicture,
    required this.bodyColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -deviceSize.height * 0.1,
          child: Container(
            width: deviceSize.width,
            height: deviceSize.height * 0.11,
            decoration: BoxDecoration(color: bodyColor),
          ),
        ),
        Container(
          height: deviceSize.height * 0.3,
          width: deviceSize.width,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: bodyColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  recipeTitle,
                  softWrap: true,
                  textWidthBasis: TextWidthBasis.parent,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: deviceSize.width * 0.5,
                height: 1,
                decoration: BoxDecoration(color: textColor),
              ),
              SizedBox(height: deviceSize.height * 0.12),
              IconizedInfo(
                value: recipeCookTime,
                infoType: InfoType.time,
                color: textColor,
              ),
              SizedBox(height: deviceSize.height * 0.02),
              IconizedInfo(
                value: recipeCalories,
                infoType: InfoType.kcal,
                color: textColor,
              ),
            ],
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
              backgroundImage: NetworkImage(recipePicture),
            ),
          ),
        ),
      ],
    );
  }
}
