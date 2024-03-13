import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';

class CustomCirclePercentIndicatorQuizScreen extends StatefulWidget {
  const CustomCirclePercentIndicatorQuizScreen({
    super.key,
    required this.outPutStreamTime,
    required this.outPutAnimationStatus,
  });

  final Stream<bool> outPutAnimationStatus;
  final Stream<int> outPutStreamTime;

  @override
  State<CustomCirclePercentIndicatorQuizScreen> createState() =>
      _CustomCirclePercentIndicatorQuizScreenState();
}

class _CustomCirclePercentIndicatorQuizScreenState
    extends State<CustomCirclePercentIndicatorQuizScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  double progress = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 30,
      ),
    );
    animationController.forward();

    Tween<double> tween = Tween(begin: 0.0, end: 1.0);
    animationController.addListener(() {
      progress = tween.evaluate(animationController);
      print(progress);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 43,
      backgroundColor: Colors.white,
      child: StreamBuilder2(
        streams:
            StreamTuple2(widget.outPutAnimationStatus, widget.outPutStreamTime),
        builder: (context, snapshots) => CircularPercentIndicator(
          radius: 43,
          // animation: snapshots.snapshot1.data == null
          //     ? true
          //     : snapshots.snapshot1.data!,
          circularStrokeCap: CircularStrokeCap.round,
          restartAnimation: true,
          percent: progress,
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
