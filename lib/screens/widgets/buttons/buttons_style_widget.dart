import 'package:flutter/material.dart';
import '../../../../theme/app_colors.dart';
import '../styles/app_text_style.dart';

class TitleButton extends StatelessWidget {
  final String title;
  final Function () onTap;

  const TitleButton({super.key, required this.title, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          onTap();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.red,
          padding: EdgeInsets.all(18),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text(title, style: appTextStyle(20, .w600, AppColors.white),),
              AppTextStyle(data: title, size: 20, weight: .w600, color: AppColors.white),
              Icon(Icons.arrow_forward, color: AppColors.white, size: 24, fontWeight: .w600,)

            ],)
    );
  }
}

class ActionButton extends StatelessWidget {

  final Icon icon;
  final double size;
  final Function () onTap;
  const ActionButton({super.key, required this.icon, required this.size, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onTap();
      },
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(12),
        backgroundColor: AppColors.red,
        foregroundColor: AppColors.white,
      ),
      child: Icon(icon.icon, size: size,),
    );
  }
}

