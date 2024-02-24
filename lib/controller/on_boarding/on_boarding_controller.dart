import 'dart:async';

import 'package:flutter/material.dart';

class OnBoardingController {
  int currentPositionPage = 0;
  late StreamController<int> streamController;
  late Sink<int> inputData;
  late Stream<int> outPutData;
  late PageController onBoardgingPageViewController;

  OnBoardingController() {
    streamController = StreamController();
    inputData = streamController.sink;
    outPutData = streamController.stream;
    inputData.add(currentPositionPage);
    onBoardgingPageViewController=PageController(initialPage: currentPositionPage);

  }

  void onTapDotIndicator(int indexPosition) {
    currentPositionPage = indexPosition;
    inputData.add(currentPositionPage);
    onBoardgingPageViewController.animateToPage(currentPositionPage, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);

  }

  void onTabNext() {
    if (currentPositionPage == 2) {
      currentPositionPage = 0;
    } else {
      currentPositionPage = currentPositionPage + 1;
    }
onBoardgingPageViewController.animateToPage(currentPositionPage, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    inputData.add(currentPositionPage);
  }

  void onDispose() {
    inputData.close();
    streamController.close();
    onBoardgingPageViewController.dispose();
  }
}
