import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/const_values.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/margin_values.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/view/answer_screen/widgets/custom_question_number_answer_screen.dart';

import '../widgets/custom_information_student.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var m = ModalRoute.of(context)!.settings.arguments;
    print(m);
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const CustomInformationStudent(
                name: "Ahmed", grade: "Grade :      3     /       5"),
            const SizedBox(
              height: HeightValuesManager.h20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: PaddingValuesManagers.p16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomQuestionNumberAnswerScreen(order: 1),
                  CustomStatusAnswerAnswersScreen()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
