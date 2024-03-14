import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/margin_values.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';

class CustomInformationStudent extends StatelessWidget {
  const CustomInformationStudent({
    super.key, required this.name, required this.grade,
  });

  final String name;
  final String grade;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: PaddingValuesManagers.p16,
          vertical: PaddingValuesManagers.p20),
      margin: const EdgeInsets.only(
          left: MarginValuesManagers.m16,
          right: MarginValuesManagers.m16,
          top: MarginValuesManagers.m39),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(blurRadius:10, spreadRadius: -10, offset: Offset(0, 10)),
          ],
          color: ColorManager.kWhiteColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name : $name",
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.bold,
              fontSize: FontSize.f21,
            ),
          ),
          const SizedBox(
            height: HeightValuesManager.h15,
          ),
          Text(
            grade,
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.w400,
              fontSize: FontSize.f21,
            ),
          ),
        ],
      ),
    );
  }
}
