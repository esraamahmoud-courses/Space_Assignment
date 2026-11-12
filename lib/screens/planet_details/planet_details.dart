import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

import '../../core/routes/app_routes.dart';
import '../../theme/app_colors.dart';
import '../classes/class_space_details.dart';
import '../widgets/buttons/buttons_style_widget.dart';
import '../widgets/styles/app_text_style.dart';

class PlanetDetails extends StatefulWidget {
  const PlanetDetails({super.key});

  @override
  State<PlanetDetails> createState() => _PlanetDetailsState();
}

class _PlanetDetailsState extends State<PlanetDetails> {
  @override
  Widget build(BuildContext context) {
    final spaceDetails =
        ModalRoute.of(context)!.settings.arguments as SpaceDetails;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/exploreBG.png",
                        height: 144,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      Image.asset("assets/images/gradient2.png"),
                    ],
                  ),

                  Positioned(
                    top: 8,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ActionButton(
                          icon: Icon(Icons.arrow_back),
                          size: 20,
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.home,
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    top: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppTextStyle(
                          data: spaceDetails.name,
                          size: 24,
                          weight: .w700,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextStyle(
                          data: spaceDetails.title,
                          size: 24,
                          weight: .w700,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 16,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 339,
                          child: Center(
                            child: Flutter3DViewer(src: spaceDetails.model),
                          ),
                        ),

                        SizedBox(height: 16),

                        AppTextStyle(
                          data: "About",
                          size: 24,
                          weight: .w700,
                          color: AppColors.white,
                        ),

                        AppTextStyle(
                          data: spaceDetails.details,
                          size: 16,
                          weight: .w300,
                          color: AppColors.white,
                        ),

                        AppTextStyle(
                          data:
                              "Distance from Sun (km) : ${spaceDetails.distanceFromSun}",
                          size: 17,
                          weight: .w700,
                          color: AppColors.white,
                        ),

                        AppTextStyle(
                          data:
                              "Length of Day (hours) : ${spaceDetails.lengthOfDay}",
                          size: 17,
                          weight: .w700,
                          color: AppColors.white,
                        ),

                        AppTextStyle(
                          data:
                              "Orbital Period (Earth years) : ${spaceDetails.orbitalPeriod}",
                          size: 17,
                          weight: .w700,
                          color: AppColors.white,
                        ),

                        AppTextStyle(
                          data: "Radius (Km) : ${spaceDetails.radiusBy}",
                          size: 17,
                          weight: .w700,
                          color: AppColors.white,
                        ),

                        AppTextStyle(
                          data: "Mass (kg) : ${spaceDetails.mass}",
                          size: 17,
                          weight: .w700,
                          color: AppColors.white,
                        ),

                        AppTextStyle(
                          data: "Gravity (m/s²) : ${spaceDetails.gravity}",
                          size: 17,
                          weight: .w700,
                          color: AppColors.white,
                        ),

                        AppTextStyle(
                          data:
                              "Surface Area (Km²) : ${spaceDetails.surfaceArea}",
                          size: 17,
                          weight: .w700,
                          color: AppColors.white,
                        ),

                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
