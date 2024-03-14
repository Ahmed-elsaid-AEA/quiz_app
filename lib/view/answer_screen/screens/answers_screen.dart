import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/const_values.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/margin_values.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';

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
            CustomInformationStudent(name: "Ahmed", grade: "Grade :      3     /       5")
          ],
        ),
      ),
    );
  }
}

