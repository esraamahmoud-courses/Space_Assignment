import 'package:flutter/material.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';

import '../../core/routes/app_routes.dart';
import '../../theme/app_colors.dart';
import '../classes/class_space_details.dart';
import '../widgets/buttons/buttons_style_widget.dart';
import '../widgets/styles/app_text_style.dart';

class PlanetDetails extends StatelessWidget {
  const PlanetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final spaceDetails =
        ModalRoute.of(context)!.settings.arguments as SpaceDetails;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Stack(children: [Image.asset("assets/images/exploreBG.png")]),

                Center(
                  child: AppTextStyle(
                    data: spaceDetails.name,
                    size: 24,
                    weight: .w700,
                    color: AppColors.white,
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

            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      // Center(
                      //   child: ModelViewer(
                      //     src: spaceDetails.image,
                      //     alt: "A 3D model of the ${spaceDetails.name}.",
                      //     autoRotate: true,
                      //     cameraControls: true,
                      //   ),
                      // ),

                      SizedBox(
                        width: 342,
                        height: 339,
                        child: Image.asset(
                          spaceDetails.image,
                          fit: BoxFit.cover,
                        ),
                      ),

                      AppTextStyle(
                        data: "About",
                        size: 24,
                        weight: .bold,
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
                        weight: .bold,
                        color: AppColors.white,
                      ),

                      AppTextStyle(
                        data:
                            "Length of Day (hours) : ${spaceDetails.lengthOfDay}",
                        size: 17,
                        weight: .bold,
                        color: AppColors.white,
                      ),

                      AppTextStyle(
                        data:
                            "Orbital Period (Earth years) : ${spaceDetails.orbitalPeriod}",
                        size: 17,
                        weight: .bold,
                        color: AppColors.white,
                      ),

                      AppTextStyle(
                        data: "Radius (Km) : ${spaceDetails.radiusBy}",
                        size: 17,
                        weight: .bold,
                        color: AppColors.white,
                      ),

                      AppTextStyle(
                        data: "Mass (kg) : ${spaceDetails.mass}",
                        size: 17,
                        weight: .bold,
                        color: AppColors.white,
                      ),

                      AppTextStyle(
                        data: "Gravity (m/s²) : ${spaceDetails.gravity}",
                        size: 17,
                        weight: .bold,
                        color: AppColors.white,
                      ),

                      AppTextStyle(
                        data:
                            "Surface Area (Km²) : ${spaceDetails.surfaceArea}",
                        size: 17,
                        weight: .bold,
                        color: AppColors.white,
                      ),

                      TitleButton(
                        title: "Back to Home",
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.home);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
