import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/view/quiz/widgets/custom_app_bar_quiz_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // String a = ModalRoute.of(context)!.settings.arguments as String;
    // print(a);
    return Scaffold(
      backgroundColor: ColorManager.kLightWhite,
      appBar: CustomAppBarQuizScreen(onTap: () {
        Navigator.of(context).canPop();
      }, text: "7/0"),
    );
  }
}
