import 'package:flutter/material.dart';
import 'package:quiz_app/view/on_boarding/screen/on_boarding_screen.dart';
import 'package:quiz_app/view/splash/screens/splash_screen.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreen: (context) => SplashScreen(),
    RoutesName.kOnBoardgingScreen: (context) => OnBoardingScreen(),
  };
}

class RoutesName {
  static const String kSplashScreen = '/kSplashScreen';
  static const String kOnBoardgingScreen = '/kOnBoardgingScreen';
}
