import 'dart:async';

import 'package:flutter/cupertino.dart';

class LoginScreenController {
  String name = "";
  late GlobalKey<FormState> formKeyName;
  bool buttonIsActive = false;
  late StreamController<bool> streamControllerButtonStatus;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> isActiveOutputStream;

  LoginScreenController() {
    formKeyName = GlobalKey();
    streamControllerButtonStatus = StreamController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    isActiveOutputStream = streamControllerButtonStatus.stream;
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
}
