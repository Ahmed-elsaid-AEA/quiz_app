import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controller/answer/answer_screen_controller.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/const_values.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/margin_values.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/view/answer_screen/widgets/custom_question_number_answer_screen.dart';
import 'package:quiz_app/view/answer_screen/widgets/custom_status_answer_answers_screen.dart';

import '../widgets/custom_information_student.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({super.key});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  late AnswerScreenController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnswerScreenController();
  }

  @override
  Widget build(BuildContext context) {
    Map studentAnswers = ModalRoute.of(context)!.settings.arguments as Map;
    controller.getStudentAnswers(studentAnswers);
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.printList();
                  },
                  child: Text("enter")),
              CustomInformationStudent(
                  name: controller.studentAnswers[StringsValues.kName],
                  grade: "Grade :      3     /       5"),
              const SizedBox(
                height: HeightValuesManager.h20,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: PaddingValuesManagers.p16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomQuestionNumberAnswerScreen(order: 1),
                            CustomStatusAnswerAnswersScreen()
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: HeightValuesManager.h20,
                      ),
                  itemCount: controller.studentAnswers[StringsValues.kListCorrectAnswer].length),
              const SizedBox(
                height: HeightValuesManager.h20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
