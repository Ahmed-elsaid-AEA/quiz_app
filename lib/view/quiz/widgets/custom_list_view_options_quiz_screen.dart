import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/const_values.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/view/quiz/widgets/custom_item_radio_quiz_screen.dart';

class CustomListViewOptionsQuizScreen extends StatelessWidget {
  const CustomListViewOptionsQuizScreen({
    super.key,
    required this.outputDataGroupValueRadio,
    required this.onTap,
    required this.outPutStreamQuestion,
  });

  final Stream<int> outputDataGroupValueRadio;
  final Stream<int> outPutStreamQuestion;
  final void Function(int indexValue) onTap;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: outPutStreamQuestion,
      builder: (context, snapshotQuestion) =>
          ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              StreamBuilder(
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
                  option: ConstValue
                      .questionList[snapshotQuestion.data == null
                          ? 0
                          : snapshotQuestion.data!]
                      .listAnswers[index],
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: HeightValuesManager.h25,
              ),
          itemCount: ConstValue
              .questionList[
                  snapshotQuestion.data == null ? 0 : snapshotQuestion.data!]
              .listAnswers
              .length),
    );
  }
}
// i=-1
// 0 1 2 3
