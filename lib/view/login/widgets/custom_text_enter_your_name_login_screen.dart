import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/strings_values.dart';

class CustomTextEnterYourNameLoginScreen extends StatelessWidget {
  const CustomTextEnterYourNameLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        StringsValues.kEnterYourName,
        style: GoogleFonts.baloo2(
            fontSize: FontSize.f18,
            color: ColorManager.kPrimaryColor,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
