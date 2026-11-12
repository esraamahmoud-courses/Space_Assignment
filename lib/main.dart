import 'package:flutter/material.dart';
import 'package:space_assignment/core/routes/app_routes.dart';
import 'package:space_assignment/screens/home/home_screen.dart';
import 'package:space_assignment/screens/login/login_screen.dart';
import 'package:space_assignment/screens/planet_details/planet_details.dart';
import 'package:space_assignment/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "SpaceGrotesk"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: AppColors.black),

      initialRoute: AppRoutes.login,

      routes: {
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.details: (context) => PlanetDetails(),
      },
    );
  }
}
