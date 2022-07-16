import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

enum InfoType { time, kcal }

class IconizedInfo extends StatelessWidget {
  final InfoType infoType;
  final int value;
  final Color color;
  const IconizedInfo({
    Key? key,
    required this.value,
    required this.infoType,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            infoType == InfoType.time
                ? Icons.timer_outlined
                : Icons.lunch_dining_outlined,
            color: color,
          ),
          SizedBox(
            width: infoType == InfoType.time ? 2 : 4,
          ),
          Text(
            '$value ${infoType == InfoType.time ? Strings.minutes : Strings.kcal}',
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}
