import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';

class SplashController{
  static void goToOnBoardingPage(BuildContext context){
    Navigator.pushNamed(context, RoutesName.kOnBoardgingScreen);
  }
}