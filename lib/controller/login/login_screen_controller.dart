import 'package:flutter/cupertino.dart';

class LoginScreenController {
  String name = "";
  late GlobalKey<FormState> formKeyName;
  bool buttonIsActive = false;

  LoginScreenController() {
    formKeyName = GlobalKey();
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
}
