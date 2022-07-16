import 'package:flutter/material.dart';

class LeadingBullet extends StatelessWidget {
  final Color color;
  final double sizePix;
  const LeadingBullet({
    Key? key,
    this.color = Colors.black,
    this.sizePix = 3.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizePix,
      width: sizePix,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
