import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/view/quiz/widgets/custom_app_bar_quiz_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

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
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center ,
            children: [
              Stack(
                children: [
                  CircularPercentIndicator(
                    radius: 43,
                    percent: 1,
                    center: Text("30",style: GoogleFonts.baloo2(fontWeight: FontWeight.w700,fontSize: FontSize.f32),),
                    backgroundColor: ColorManager.kPrimaryColor.withOpacity(.38),
                    animationDuration: 30000,
                    animation: true,
                    progressColor: ColorManager.kPrimaryColor,
                  )
                ],
              )
            ],
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
