import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/view/login/widgets/custom_text_enter_your_name_login_screen.dart';

import '../widgets/custom_logo_login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: PaddingValuesManagers.p24),
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsValuesManager.kLoginScreenImage),
                fit: BoxFit.cover)),
        child: const Column(

          children: [
            CustomLogoLoginScreen(),
            CustomTextEnterYourNameLoginScreen()
          ],
        ),
      ),
    );
  }
}
