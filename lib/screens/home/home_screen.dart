import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_assignment/screens/widgets/styles/app_text_style.dart';
import 'package:space_assignment/theme/app_colors.dart';

import '../../core/routes/app_routes.dart';
import '../widgets/buttons/buttons_style_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    TODO: "create Linear Gradient";
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/exploreBG.png"),
                ],
              ),

              Center(
                child:  AppTextStyle(
                    data: "Explore",
                    size: 24,
                    weight: .w700,
                    color: AppColors.white),
              ),

              Positioned(
                bottom: 0,
                  left: 16,
                  right: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextStyle(
                          data: "Which planet ",
                          size: 24,
                          weight: .w700,
                          color: AppColors.white
                      ),
                      AppTextStyle(
                          data: "would you like to explore?",
                          size: 24,
                          weight: .w700,
                          color: AppColors.white
                      ),
                    ],
                  )
              ),
            ],
          ),

          Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 12,
                children: [
                  Image.asset("assets/images/earth.png"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionButton(icon: Icon(Icons.arrow_back), size: 24, onTap: (){}),

                      AppTextStyle(data: "Earth", size: 24, weight: .w700, color: AppColors.white),

                      ActionButton(icon: Icon(Icons.arrow_forward), size: 24, onTap: (){}),
                    ],
                  ),
                 Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 8)),
                 TitleButton(
                        title: "Explore Earth", onTap: (){
                      Navigator.pushNamed(context, AppRoutes.login);
                    }
                    ),

                ]
              )

          )
        ]

    )
    );
  }
}
