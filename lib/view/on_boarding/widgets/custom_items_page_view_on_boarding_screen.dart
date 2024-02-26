import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/models/on_boarding_screen/on_boarding_screen_model.dart';

class CustomItemsPageViewOnBoardingScreen extends StatelessWidget {
  const CustomItemsPageViewOnBoardingScreen({
    super.key,
    required this.onBoardingScreenModel,
  });

  final OnBoardingScreenModel onBoardingScreenModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 46),
      child: Center(
        child: SingleChildScrollView(
          child:
              Column(

                  crossAxisAlignment: CrossAxisAlignment.center, children: [
            SvgPicture.asset(
                height:HeightValuesManager.h400,
                onBoardingScreenModel.onBoardingImage),
            const SizedBox(
              height:HeightValuesManager.h108,
            ),
            Text(
              onBoardingScreenModel.onBoardingTitle,
              style: const TextStyle(
                  fontSize: FontSize.f32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: HeightValuesManager.h24,
            ),
            Text(
              textAlign: TextAlign.center,
                onBoardingScreenModel.onBoardingDesc,
                style: const TextStyle(
                  fontSize: FontSize.f21,
                )),
          ]),
        ),
      ),
    );
  }
}
