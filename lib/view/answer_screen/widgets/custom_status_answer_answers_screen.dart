import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/margin_values.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';

class CustomStatusAnswerAnswersScreen extends StatelessWidget {
  const CustomStatusAnswerAnswersScreen({
    super.key, required this.color,
  });
final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(
          left: MarginValuesManagers.m7,
        ),
        alignment: Alignment.center,
        // width: double.infinity,
        decoration:   BoxDecoration(
            boxShadow: [
              const BoxShadow(
                  blurRadius: 10, spreadRadius: -10, offset: Offset(0, 10)),
            ],
            color: color,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: PaddingValuesManagers.p8,
                horizontal: PaddingValuesManagers.p12,
              ),
              child: Text(
                textAlign: TextAlign.center,
                "In what year did the United States host the FIFA World Cup for the first time?",
                style: GoogleFonts.baloo2(
                    fontSize: FontSize.f18,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.kWhiteColor),
              ),
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: PaddingValuesManagers.p20,
                  vertical: PaddingValuesManagers.p16),
              padding: const EdgeInsets.symmetric(
                  vertical: PaddingValuesManagers.p6,
                  horizontal: PaddingValuesManagers.p12),
              alignment: Alignment.center,
              // width: double.infinity,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: -10,
                        offset: Offset(0, 10)),
                  ],
                  color: ColorManager.kWhiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.checkmark_alt_circle_fill,
                    color: ColorManager.kPrimaryColor,
                  ),
                  const SizedBox(
                    width: WidthValuesManagers.w4,
                  ),
                  Expanded(
                      child: Text(
                    "1986",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.baloo2(
                        fontSize: FontSize.f18,
                        color: ColorManager.kPrimaryColor,
                        fontWeight: FontWeight.w700),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
