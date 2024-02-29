import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';

class CustomItemRadioQuizScreen extends StatelessWidget {
  const CustomItemRadioQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: PaddingValuesManagers.p30,
          vertical: PaddingValuesManagers.p10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorManager.kWhiteColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1986",
            style: GoogleFonts.baloo2(
                fontSize: FontSize.f20,
                fontWeight: FontWeight.bold,
                color: ColorManager.kPrimaryColor),
          ),
          Container(
            width: WidthValuesManagers.w20,
            height: HeightValuesManager.h20,
            decoration: const ShapeDecoration(
              shape: CircleBorder(
                  side:
                      BorderSide(color: ColorManager.kPrimaryColor, width: 1)),
              color: ColorManager.kWhiteColor,
            ),
          )
        ],
      ),
    );
  }
}
