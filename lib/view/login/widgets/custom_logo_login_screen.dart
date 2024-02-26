import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/strings_values.dart';

class CustomLogoLoginScreen extends StatelessWidget {
  const CustomLogoLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      StringsValues.kTextLogo,
      style: GoogleFonts.montserrat(
          fontSize: FontSize.f200, color: ColorManager.kPrimaryColor),
    );
  }
}
