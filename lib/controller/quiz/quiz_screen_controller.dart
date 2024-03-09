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
  late StreamController<int> streamControllerQuestion;
  bool isNextActive = false;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> isActiveOutputStream;
  int timeSecondCounterNow = 0;

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
    outPutStreamQuestion = streamControllerQuestion.stream.asBroadcastStream();
    inputDataQuestion.add(questionNow);
    inputDataTime.add(timeSecondCounterNow);
    inputDataButtonStatus.add(isNextActive);
    makeCounter();
  }

  void makeCounter() {
    for (int i = 0; i < 31; i++) {
      Future.delayed(
        Duration(seconds: i),
        () {
          timeSecondCounterNow = i;
          inputDataTime.add(timeSecondCounterNow);
          if(i==30) {
            nextQuestion();
          }
        },
      );
    }
  }

  void nextQuestion()
  {
  if(questionNow>=ConstValue.questionList.length-1){
    print("can't increment");
  }
  else {
    questionNow++;
    print(" increment");
    makeCounter();

  }
  inputDataQuestion.add(questionNow);


  }
  void onTapAtItemRadio(int index) {
    groupValueIndex = index;
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
  }
}
