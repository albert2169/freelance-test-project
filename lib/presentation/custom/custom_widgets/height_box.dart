import 'package:flutter/material.dart';

class HeightBox extends StatelessWidget {
  final double height;
  const HeightBox({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}