import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/const_values.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';

class QuizScreenController {
  int countQuestion = 0;
  int groupValueIndex = -1;
  int questionNow = 0;
  late StreamController<int> streamControllerGroupValueIndex;
  late Sink<int> inputDataGroupValueIndex;
  late Stream<int> outPutDataGroupValueIndex;
  late StreamController<int> streamControllerTime;
  late Sink<int> inputDataTime;
  late Stream<int> outPutStreamTime;
  late StreamController<bool> streamControllerButtonStatus;
  late Sink<int> inputDataQuestion;
  late Stream<int> outPutStreamQuestion;

  ////
  late StreamController<double> streamControllerAnimationProgress;
  late Sink<double> inputPutAnimationProgress;
  late Stream<double> outPutAnimationProgress;

  ////////////
  late StreamController<String> streamControllerQuestionsNow;
  late Sink<String> inputPutQuestionNow;
  late Stream<String> outPutQuestionNow;

  ////
  late StreamController<int> streamControllerQuestion;
  bool isNextActive = false;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> isActiveOutputStream;
  int timeSecondCounterNow = 0;
  List<int> listCorrectAnswer = [];
  late AnimationController animationController;
  double animationProgressPercent = 0.0;
  Tween<double> tween = Tween(begin: 0.0, end: 1.0);
  late BuildContext _context;
  String _name = "";

  QuizScreenController(
      SingleTickerProviderStateMixin vsync, BuildContext context) {
    _context = context;
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(
        seconds: 30,
      ),
    );
    countQuestion = ConstValue.questionList.length;
    streamControllerGroupValueIndex = StreamController();
    inputDataGroupValueIndex = streamControllerGroupValueIndex.sink;
    outPutDataGroupValueIndex =
        streamControllerGroupValueIndex.stream.asBroadcastStream();
    inputDataGroupValueIndex.add(groupValueIndex);
    streamControllerButtonStatus = StreamController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    isActiveOutputStream =
        streamControllerButtonStatus.stream.asBroadcastStream();
    streamControllerTime = StreamController();
    inputDataTime = streamControllerTime.sink;
    outPutStreamTime = streamControllerTime.stream.asBroadcastStream();
    //
    streamControllerQuestionsNow = StreamController();
    inputPutQuestionNow = streamControllerQuestionsNow.sink;
    outPutQuestionNow = streamControllerQuestionsNow.stream.asBroadcastStream();
    //
    streamControllerQuestion = StreamController();
    inputDataQuestion = streamControllerQuestion.sink;
    outPutStreamQuestion =
        streamControllerQuestion.stream.asBroadcastStream(); //
    streamControllerAnimationProgress = StreamController();
    inputPutAnimationProgress = streamControllerAnimationProgress.sink;
    outPutAnimationProgress =
        streamControllerAnimationProgress.stream.asBroadcastStream();
    inputDataQuestion.add(questionNow);
    inputDataTime.add(timeSecondCounterNow);
    inputDataButtonStatus.add(isNextActive);
    inputPutAnimationProgress.add(animationProgressPercent);
    makeCounter();
    inputPutQuestionNow.add("${questionNow + 1}/$countQuestion");
  }

  // -=========================================== forward animation ===================
  void forwardAnimation() {
    animationController.reset();
    animationController.forward();
    animationController.addListener(() {
      animationProgressPercent = tween.evaluate(animationController);
      inputDataTime.add((animationProgressPercent * 31).toInt());
      inputPutAnimationProgress.add(animationProgressPercent);
    });
  }

  // 0    1
  // 1    2
  // 2    3
  // 3    4
  // 4    5

  // -=========================================== restart animation ===================
  void restartAnimation() {
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        nextQuestion();
      }
    });
  }

  // -=========================================== make counter ===================

  void makeCounter() {
    forwardAnimation();
    inputDataTime.add((animationProgressPercent * 31).toInt());
  }

  // -=========================================== goToAnswerScreen ===================

  void goToAnswerScreen() {
    Navigator.pushReplacementNamed(_context, RoutesName.kAnswerScreen,
        arguments: {
          StringsValues.kName: _name,
          StringsValues.kListCorrectAnswer: listCorrectAnswer,
        });
  }

//  // -=========================================== add name ===================
  void addName(String name) {
    _name = name;
  }

  void nextQuestion() {
    // check if you add answer
    if (questionNow == listCorrectAnswer.length) {
      listCorrectAnswer.add(groupValueIndex);
    } else {
      listCorrectAnswer[questionNow] = groupValueIndex;
    }
    // update in ui
    groupValueIndex = -1;
    inputDataGroupValueIndex.add(groupValueIndex);
    if (questionNow >= ConstValue.questionList.length - 1) {
      // inputPutAnimationProgress.add(animationProgressPercent);

      goToAnswerScreen();
    } else {
      questionNow++;
      makeCounter();
    }
    inputDataQuestion.add(questionNow);
    inputPutQuestionNow.add("${questionNow + 1}/$countQuestion");
  }

  void onTapAtItemRadio(int index) {
    groupValueIndex = index;
    // check if you add answer
    if (questionNow == listCorrectAnswer.length) {
      listCorrectAnswer.add(groupValueIndex);
    } else {
      listCorrectAnswer[questionNow] = groupValueIndex;
    }

    inputDataGroupValueIndex.add(groupValueIndex);
    if (groupValueIndex != -1) {
      isNextActive = true;
    } else {
      isNextActive = false;
    }

    inputDataButtonStatus.add(isNextActive);
  }

  onDispose() {
    inputDataGroupValueIndex.close();
    streamControllerGroupValueIndex.close();
    inputDataTime.close();
    streamControllerTime.close();
    inputDataButtonStatus.close();
    streamControllerButtonStatus.close();
    inputDataQuestion.close();
    streamControllerQuestion.close();
    inputPutAnimationProgress.close();
    streamControllerAnimationProgress.close();
    inputPutQuestionNow.close();
    streamControllerQuestionsNow.close();
  }
}
