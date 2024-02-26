import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/view/login/widgets/custom_text_enter_your_name_login_screen.dart';
import 'package:quiz_app/view/on_boarding/widgets/custom_text_field_name_login_screen.dart';

class CustomStartButtonLoginScreen extends StatelessWidget {
  const CustomStartButtonLoginScreen({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: WidthValuesManagers.w10,
      minWidth: WidthValuesManagers.w20,
      onPressed:onPressed,
      child: Container(
        alignment: AlignmentDirectional.center,
        height: HeightValuesManager.h59,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: ColorManager.kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Text(
          StringsValues.kStart,
          style: GoogleFonts.baloo2(
            color: ColorManager.kWhiteColor,
            fontSize: FontSize.f24,
          ),
        ),
      ),
    );
  }
}