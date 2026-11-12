import 'package:flutter/material.dart';
import 'package:space_assignment/core/routes/app_routes.dart';
import 'package:space_assignment/screens/widgets/buttons/buttons_style_widget.dart';
import 'package:space_assignment/screens/widgets/styles/app_text_style.dart';
import 'package:space_assignment/theme/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/loginBG.png"),

        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: AppTextStyle(
              data: "Explore The Universe",
              size: 48,
              fontFamily: "Inter",
              weight: .w900,
              color: AppColors.white,
            ),
          ),
        ),

        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: TitleButton(
            title: "Explore",
            onTap: () {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            },
          ),
        ),
      ],
    );
  }
}
