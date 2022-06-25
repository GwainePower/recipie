import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final Color? indicatorColor;

  const LoadingWidget({Key? key, this.indicatorColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: indicatorColor),
    );
  }
}
