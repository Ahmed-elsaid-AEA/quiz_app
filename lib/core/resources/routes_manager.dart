import 'package:flutter/material.dart';
import 'package:quiz_app/view/answer_screen/screens/answers_screen.dart';
import 'package:quiz_app/view/login/screens/login_screen.dart';
import 'package:quiz_app/view/on_boarding/screen/on_boarding_screen.dart';
import 'package:quiz_app/view/quiz/screens/quiz_screen.dart';
import 'package:quiz_app/view/splash/screens/splash_screen.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreen: (context) => const SplashScreen(),
    RoutesName.kOnBoardgingScreen: (context) => const OnBoardingScreen(),
    RoutesName.kLoginScreen: (context) => const LoginScreen(),
    RoutesName.kQuizScreen: (context) => const QuizScreen(),
    RoutesName.kAnswerScreen: (context) => const AnswerScreen(),
  };
}

class RoutesName {
  static const String kSplashScreen = '/kSplashScreen';
  static const String kOnBoardgingScreen = '/kOnBoardgingScreen';
  static const String kLoginScreen = '/kLoginScreen';
  static const String kQuizScreen = '/kQuizScreen';
  static const String kAnswerScreen = '/kAnswerScreen';
}
