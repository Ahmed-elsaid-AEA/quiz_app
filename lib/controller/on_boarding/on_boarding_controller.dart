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

  void onTabNext() {
    if (currentPositionPage == 2) {
      currentPositionPage = 0;
    } else {
      currentPositionPage = currentPositionPage + 1;
    }

    inputData.add(currentPositionPage);
  }
}
