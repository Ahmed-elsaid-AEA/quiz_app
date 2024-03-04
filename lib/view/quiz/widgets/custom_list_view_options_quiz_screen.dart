import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/view/quiz/widgets/custom_item_radio_quiz_screen.dart';

class CustomListViewOptionsQuizScreen extends StatelessWidget {
  const CustomListViewOptionsQuizScreen({
    super.key,
    required this.itemCount,
    required this.option,
    required this.outputDataGroupValueRadio, required this.onTap,
  });

  final int itemCount;
  final List<String> option;
  final Stream<int> outputDataGroupValueRadio;
final void Function(int indexValue)onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => StreamBuilder(
              stream: outputDataGroupValueRadio,
              builder: (context, snapshot) => CustomItemRadioQuizScreen(
                onTap: () {
                  onTap(index);
                },
                isSelected: snapshot.data == null
                    ? false
                    : snapshot.data == index
                        ? true
                        : false,
                option: option[index],
              ),
            ),
        separatorBuilder: (context, index) => const SizedBox(
              height: HeightValuesManager.h25,
            ),
        itemCount: itemCount);
  }
}
// i=-1
// 0 1 2 3
