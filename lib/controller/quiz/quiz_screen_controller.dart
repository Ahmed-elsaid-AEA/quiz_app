import 'dart:async';

import 'package:quiz_app/core/resources/const_values.dart';

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
  late StreamController<bool> streamControllerAnimationStatus;
  late Sink<bool> inputPutAnimationStatus;
  late Stream<bool> outPutAnimationStatus;
  late StreamController<int> streamControllerQuestion;
  bool isNextActive = false;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> isActiveOutputStream;
  int timeSecondCounterNow = 0;
  bool animationStatus = true;
  List<int> listCorrectAnswer = [];

  QuizScreenController() {
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
    streamControllerQuestion = StreamController();
    inputDataQuestion = streamControllerQuestion.sink;
    outPutStreamQuestion =
        streamControllerQuestion.stream.asBroadcastStream(); //
    streamControllerAnimationStatus = StreamController();
    inputPutAnimationStatus = streamControllerAnimationStatus.sink;
    outPutAnimationStatus =
        streamControllerAnimationStatus.stream.asBroadcastStream();
    inputDataQuestion.add(questionNow);
    inputDataTime.add(timeSecondCounterNow);
    inputDataButtonStatus.add(isNextActive);
    inputPutAnimationStatus.add(animationStatus);
    makeCounter();
  }

  void makeCounter() {
    for (int i = 0; i < 31; i++) {
      Future.delayed(
        Duration(seconds: i),
        () {
          timeSecondCounterNow = i;
          inputDataTime.add(timeSecondCounterNow);
          if (i == 30) {
            nextQuestion();
          }
        },
      );
    }
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
      animationStatus = false;
      inputPutAnimationStatus.add(animationStatus);
      print("can't increment");
    } else {
      questionNow++;
      print(" increment");
      makeCounter();
    }
    inputDataQuestion.add(questionNow);
  }

  void onTapAtItemRadio(int index) {
    groupValueIndex = index;
    // check if you add answer
    if (questionNow == listCorrectAnswer.length) {
      listCorrectAnswer.add(groupValueIndex);
    } else {
      listCorrectAnswer[questionNow] = groupValueIndex;
    }
    for (int i in listCorrectAnswer) {
      print(i);
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
    inputPutAnimationStatus.close();
    streamControllerAnimationStatus.close();
  }
}
