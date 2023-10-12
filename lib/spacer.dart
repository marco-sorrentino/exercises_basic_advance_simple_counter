import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key, required this.size});

  final double size;

  @override
  Widget build(context) {
    return SizedBox(
      height: size,
    );
  }
}
