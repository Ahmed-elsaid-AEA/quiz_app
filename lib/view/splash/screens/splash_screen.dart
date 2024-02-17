import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/view/on_boarding/screen/on_boarding_screen.dart';
import 'package:quiz_app/view/splash/widgets/custom_button_splash_screen.dart';

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
            CustomButtonSplashScreen(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => OnBoardingScreen(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
