import 'dart:async';

class QuizScreenController {
  List<String> option = [
    "afds",
    "84",
    "65",
    "986523.0",
    "dsdsdsd",
    "sdds",
  ];
  int groupValueIndex = -1;
  late StreamController<int> streamControllerGroupValueIndex;
  late Sink<int> inputDataGroupValueIndex;
  late Stream<int> outPutDataGroupValueIndex;
  late StreamController<bool> streamControllerButtonStatus;
  bool isNextActive = false;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> isActiveOutputStream;

  QuizScreenController() {
    streamControllerGroupValueIndex = StreamController();
    inputDataGroupValueIndex = streamControllerGroupValueIndex.sink;
    outPutDataGroupValueIndex =
        streamControllerGroupValueIndex.stream.asBroadcastStream();
    inputDataGroupValueIndex.add(groupValueIndex);
    streamControllerButtonStatus = StreamController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    isActiveOutputStream = streamControllerButtonStatus.stream.asBroadcastStream();
    inputDataButtonStatus.add(isNextActive);
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
  }
}
