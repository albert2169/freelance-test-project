import 'package:flutter/material.dart';

class WidthBox extends StatelessWidget {
  final double width;
  const WidthBox({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
