import 'package:flutter/material.dart';

enum InfoType { time, kcal }

class IconizedInfo extends StatelessWidget {
  final InfoType infoType;
  final int value;
  const IconizedInfo({
    Key? key,
    required this.value,
    required this.infoType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            infoType == InfoType.time
                ? Icons.timer_outlined
                : Icons.fastfood_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: infoType == InfoType.time ? 2 : 4,
          ),
          Text(
            '$value ${infoType == InfoType.time ? 'мин.' : 'ккал.'}',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
