import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/view/quiz/widgets/custom_item_radio_quiz_screen.dart';

class CustomListViewOptionsQuizScreen extends StatelessWidget {
  const CustomListViewOptionsQuizScreen({super.key, required this.itemCount, required this.option});
final int itemCount;
final List<String> option;
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) =>  CustomItemRadioQuizScreen(
          onTap: () {

          },
          isSelected: true,
          option: option[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: HeightValuesManager.h25,),
        itemCount:  itemCount);
  }
}
