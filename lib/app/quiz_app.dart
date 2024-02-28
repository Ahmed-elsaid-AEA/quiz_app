import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';
import 'package:quiz_app/view/splash/screens/splash_screen.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RoutesManager.routes,
      theme: ThemeData(fontFamily: FontsName.kFontMontserrat),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kQuizScreen,
    );
  }
}
