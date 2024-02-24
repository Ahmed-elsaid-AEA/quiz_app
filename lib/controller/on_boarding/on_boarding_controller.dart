import 'dart:async';

class OnBoardingController {
  int currentPositionPage = 0;
  late StreamController<int> streamController;
  late Sink<int> inputData;
  late Stream<int> outPutData;

  OnBoardingController() {
    streamController = StreamController();
    inputData = streamController.sink;
    outPutData = streamController.stream;
    inputData.add(currentPositionPage);
  }

  void onTapDotIndicator(int indexPosition) {
    currentPositionPage = indexPosition;
    inputData.add(currentPositionPage);
  }
}
