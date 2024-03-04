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

  QuizScreenController() {
    streamControllerGroupValueIndex = StreamController();
    inputDataGroupValueIndex = streamControllerGroupValueIndex.sink;
    outPutDataGroupValueIndex = streamControllerGroupValueIndex.stream.asBroadcastStream();
    inputDataGroupValueIndex.add(groupValueIndex);
  }
  void onTapAtItemRadio(int index){
    groupValueIndex=index;
    inputDataGroupValueIndex.add(groupValueIndex);

  }
  onDispose(){
    inputDataGroupValueIndex.close();
    streamControllerGroupValueIndex.close();
  }
}
