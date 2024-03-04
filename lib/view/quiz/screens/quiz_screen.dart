import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/controller/quiz/quiz_screen_controller.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/view/quiz/widgets/custom_app_bar_quiz_screen.dart';
import 'package:quiz_app/view/quiz/widgets/custom_circle_percent_indictor_quiz_screen.dart';
import 'package:quiz_app/view/quiz/widgets/custom_item_radio_quiz_screen.dart';
import 'package:quiz_app/view/quiz/widgets/custom_list_view_options_quiz_screen.dart';
import 'package:quiz_app/view/quiz/widgets/custom_question_title_quiz_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late QuizScreenController _quizScreenController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _quizScreenController = QuizScreenController();
  }
@override
  void dispose() {
    _quizScreenController.onDispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // String a = ModalRoute.of(context)!.settings.arguments as String;
    // print(a);
    return Scaffold(
      body: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: PaddingValuesManagers.p24),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: HeightValuesManager.h88,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomQuestionTitleQuizScreen(
                        text:
                        "In what year did the United States host the FIFA World Cup for the first time?"),
                    const Positioned(
                      top: -29,
                      right: 0,
                      left: 0,
                      child: CustomCirclePercentIndicatorQuizScreen(
                        text: '30',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: HeightValuesManager.h70,
                ),
                CustomListViewOptionsQuizScreen(
                  onTap: (indexValue) {
                    _quizScreenController.onTapAtItemRadio(indexValue);
                  },
                  outputDataGroupValueRadio: _quizScreenController.outPutDataGroupValueIndex,
                  option:_quizScreenController.option ,
                    itemCount: _quizScreenController.option.length)

              ],
            ),
          ),
        ),
      ),
      backgroundColor: ColorManager.kLightWhite,
      appBar: CustomAppBarQuizScreen(
          onTap: () {
            Navigator.of(context).canPop();
          },
          text: "7/0"),
    );
  }
}
