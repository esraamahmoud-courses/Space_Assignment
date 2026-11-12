import 'package:flutter/material.dart';

class AppTextStyle extends StatelessWidget {
  final String data;
  final double size;
  final FontWeight weight;
  final Color color;
  final String? fontFamily;

  const AppTextStyle({
    super.key,
    required this.data,
    required this.size,
    required this.weight,
    required this.color,
    this.fontFamily = "SpaceGrotesk",
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
        decoration: TextDecoration.none,
        height: 1.5,
        fontFamily: fontFamily,
      ),
    );
  }
}
