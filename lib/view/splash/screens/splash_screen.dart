import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/strings_values.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              StringsValues.kTextLogo,
              style: GoogleFonts.montserrat(
                  fontSize: FontSize.f400, color: ColorManager.kWhiteColor),
            ),
            MaterialButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: ColorManager.kWhiteColor,
                ),
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                child: Text(
                  StringsValues.kGetStarted,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
