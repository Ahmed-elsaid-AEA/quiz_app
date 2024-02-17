import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/raduis_values.dart';
import 'package:quiz_app/core/resources/strings_values.dart';

class CustomButtonSplashScreen extends StatelessWidget {
  const CustomButtonSplashScreen({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusValues.r35),
          color: ColorManager.kWhiteColor,
        ),
        alignment: Alignment.center,
        width: double.infinity,
        height: HeightManager.h70,
        child: const Text(
          StringsValues.kGetStarted,
          style: TextStyle(
            color: Colors.black,
            fontSize: FontSize.f21,
          ),
        ),
      ),
    );
  }
}
