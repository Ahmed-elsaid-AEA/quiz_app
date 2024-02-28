import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';

class CustomCirclePercentIndicatorQuizScreen extends StatelessWidget {
  const CustomCirclePercentIndicatorQuizScreen({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 43,
      backgroundColor: Colors.white,
      child: CircularPercentIndicator(
        radius: 43,
        circularStrokeCap: CircularStrokeCap.round,
        restartAnimation: true,
        percent: 1,
        center: Text(
          text,
          style: GoogleFonts.baloo2(
              fontWeight: FontWeight.w700, fontSize: FontSize.f32),
        ),
        backgroundColor: ColorManager.kPrimaryColor.withOpacity(.38),
        animationDuration: 30000,
        animation: true,
        progressColor: ColorManager.kPrimaryColor,
      ),
    );
  }
}
