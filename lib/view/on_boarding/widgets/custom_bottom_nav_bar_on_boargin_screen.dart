import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';

class CustomBottomNavBarOnBoardgingScreen extends StatelessWidget {
  const CustomBottomNavBarOnBoardgingScreen({
    super.key,
    required this.dotCount,
    required this.onTapDotIndicator,
    required this.outputDataDotIndicator,
    this.onTapNext,
    required this.outputDataTextStart,
  });

  final GestureTapCallback? onTapNext;
  final int dotCount;
  final void Function(int index) onTapDotIndicator;
  final Stream<int> outputDataDotIndicator;
  final Stream<int> outputDataTextStart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: PaddingValuesManagers.p52,
          right: PaddingValuesManagers.p32,
          left: PaddingValuesManagers.p32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            StringsValues.kSkip,
            style: TextStyle(fontSize: FontSize.f15),
          ),
          StreamBuilder(
            stream: outputDataDotIndicator,
            builder: (context, snapshot) => DotsIndicator(
              onTap: (position) {
                onTapDotIndicator(position);
              },
              decorator: const DotsDecorator(
                  activeSize: Size(HeightValuesManager.h12, HeightManager.h12),
                  size: Size(HeightValuesManager.h12, HeightManager.h12),
                  color: ColorManager.kGreyColor,
                  activeColor: ColorManager.kDarkPanfseg),
              dotsCount: dotCount,
              position: snapshot.data == null ? 0 : snapshot.data!,
            ),
          ),
          InkWell(
            onTap: onTapNext,
            child: StreamBuilder<int>(
              stream: outputDataTextStart,
              builder: (context, snapshot) => Text(
                  snapshot.data == null
                      ? StringsValues.kNext
                      : snapshot.data == dotCount - 1
                          ? StringsValues.kStart
                          : StringsValues.kNext,
                  style: const TextStyle(
                      fontSize: FontSize.f15, fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }
}
