import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';

class LoginScreenController {
  late GlobalKey<FormState> formKeyName;
  bool buttonIsActive = false;
  late StreamController<bool> streamControllerButtonStatus;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> isActiveOutputStream;
  late TextEditingController controllerNameTextField;

  LoginScreenController() {
    formKeyName = GlobalKey();
    streamControllerButtonStatus = StreamController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    isActiveOutputStream = streamControllerButtonStatus.stream;
    controllerNameTextField = TextEditingController();
    inputDataButtonStatus.add(buttonIsActive);
  }

  String? validateName(String? value) {
    if (value!.isEmpty) {
      return "not empty";
    } else if (value.length < 4) {
      return "should more than 4";
    } else {
      return null;
    }
  }

  void onChangedTextFormField() {
    // _loginScreenController.name =
    if (formKeyName.currentState!.validate()) {
      //navigation
      buttonIsActive = true;
    } else {
      buttonIsActive = false;
    }
    inputDataButtonStatus.add(buttonIsActive);
  }

  onDispose() {
    inputDataButtonStatus.close();
    streamControllerButtonStatus.close();
  }

  void navigateToQuizApp(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        arguments: controllerNameTextField.text, context, RoutesName.kQuizScreen, (route) => false);
  }
}
