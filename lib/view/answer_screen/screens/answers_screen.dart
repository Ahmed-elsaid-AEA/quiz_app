import 'package:flutter/material.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
  var m=  ModalRoute.of(context)!.settings.arguments ;
  print(m);
    return Scaffold();
  }
}
