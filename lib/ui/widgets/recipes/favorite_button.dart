import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final Color color;
  final void Function()? onPressed;
  const FavoriteButton({
    Key? key,
    required this.isFavorite,
    this.onPressed,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // TODO: Добавить функционал "Избранного"
      },
      icon: isFavorite
          ? const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_outline,
              color: color,
            ),
    );
  }
}
