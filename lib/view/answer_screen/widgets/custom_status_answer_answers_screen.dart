import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/margin_values.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
class CustomStatusAnswerAnswersScreen extends StatelessWidget {
  const CustomStatusAnswerAnswersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: PaddingValuesManagers.p16,
            vertical: PaddingValuesManagers.p20),
        margin: const EdgeInsets.only(
          left: MarginValuesManagers.m7,
        ),
        alignment: Alignment.centerLeft,
        // width: double.infinity,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 5, spreadRadius: -5, offset: Offset(0, 10)),
            ],
            color: ColorManager.kWhiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ],
        ),
      ),
    );
  }
}

