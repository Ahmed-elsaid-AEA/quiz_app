import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';

class CustomQuestionNumberAnswerScreen extends StatelessWidget {
  const CustomQuestionNumberAnswerScreen({
    super.key,
    required this.order,
  });

  final int order;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: WidthValuesManagers.w58,
      height: 35,
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingValuesManagers.p10,
      ),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius:10, spreadRadius: -10, offset: Offset(0, 10)),
          ],
          color: ColorManager.kGreenBold,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$order",
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.bold,
              fontSize: FontSize.f21,
              color: ColorManager.kWhiteColor
            ),
          ),
        ],
      ),
    );
  }
}
