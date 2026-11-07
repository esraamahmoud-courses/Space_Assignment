import 'package:flutter/material.dart';
import 'package:space_assignment/core/routes/app_routes.dart';
import 'package:space_assignment/screens/home/home_screen.dart';
import 'package:space_assignment/screens/login/login_screen.dart';
import 'package:space_assignment/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "inter",
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.red,

        ),

        routes: {
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.home: (context) => HomeScreen(),
    },
      initialRoute: AppRoutes.login,

    );
  }
}

