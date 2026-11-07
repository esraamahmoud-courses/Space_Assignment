import 'package:flutter/material.dart';


class AppTextStyle extends StatelessWidget {

   String data;
   double size;
   FontWeight weight;
   Color color;

   AppTextStyle({super.key, required this.data, required this.size, required this.weight, required this.color});

  @override
  Widget build(BuildContext context) {
      return Text(
        data,
        style: TextStyle(
          fontSize: size,
          fontWeight: weight,
          color: color,
          decoration: TextDecoration.none,
          height: 1.5
          ),

      );
          }
}
