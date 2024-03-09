import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';

class CustomCirclePercentIndicatorQuizScreen extends StatelessWidget {
  const CustomCirclePercentIndicatorQuizScreen({
    super.key,
    required this.outPutStreamTime,
    required this.outPutAnimationStatus,
  });

  final Stream<bool> outPutAnimationStatus;
  final Stream<int> outPutStreamTime;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 43,
      backgroundColor: Colors.white,
      child: StreamBuilder2(
        streams: StreamTuple2(outPutAnimationStatus, outPutStreamTime),
        builder: (context, snapshots) => CircularPercentIndicator(
          radius: 43,
          animation: snapshots.snapshot1.data == null
              ? true
              : snapshots.snapshot1.data!,
          circularStrokeCap: CircularStrokeCap.round,
          restartAnimation: true,
          percent: 1,
          center: Text(
            snapshots.snapshot2.data == null
                ? "0"
                : snapshots.snapshot2.data.toString(),
            style: GoogleFonts.baloo2(
                fontWeight: FontWeight.w700, fontSize: FontSize.f32),
          ),
          backgroundColor: ColorManager.kPrimaryColor.withOpacity(.38),
          animationDuration: 30000,
          progressColor: ColorManager.kPrimaryColor,
        ),
      ),
    );
  }
}
