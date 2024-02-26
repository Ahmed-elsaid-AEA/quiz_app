import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
   String a= ModalRoute.of(context)!.settings.arguments as String;
   print(a);
    return Scaffold();
  }
}
