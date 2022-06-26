import 'package:flutter/material.dart';

import '../../constants/strings.dart';

class ErrorCentered extends StatelessWidget {
  final String errorText;
  final VoidCallback? reloadFunction;

  const ErrorCentered({
    Key? key,
    required this.errorText,
    this.reloadFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 400,
        child: Column(
          children: <Widget>[
            const Text(
              Strings.somethingWentWrong,
              textAlign: TextAlign.center,
            ),
            Text(
              errorText.toString(),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: reloadFunction != null
                  ? ElevatedButton.icon(
                      onPressed: () => reloadFunction,
                      icon: const Icon(Icons.replay_rounded),
                      label: const Text('Попробовать перезагрузить'),
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
