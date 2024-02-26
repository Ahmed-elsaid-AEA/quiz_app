import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controller/login/login_screen_controller.dart';
import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/color_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/height_manger.dart';
import 'package:quiz_app/core/resources/padding_values_manager.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/view/login/widgets/custom_text_enter_your_name_login_screen.dart';
import 'package:quiz_app/view/on_boarding/widgets/custom_text_field_name_login_screen.dart';

import '../../../core/widgets/custom_material_button.dart';
import '../widgets/custom_logo_login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginScreenController _loginScreenController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginScreenController=LoginScreenController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: PaddingValuesManagers.p24),
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsValuesManager.kLoginScreenImage),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomLogoLoginScreen(),

              Column(
                children: [
                  const CustomTextEnterYourNameLoginScreen(),
                  const SizedBox(
                    height: HeightValuesManager.h10,
                  ),
                  CustomTextFieldNameLoginScreen(
                    onChanged: (value) {
                      _loginScreenController.name=value;
                      setState(() {

                      });
                      print(_loginScreenController.name);
                    },
                  ),
                  if(_loginScreenController.name.isEmpty)
                    Text("Should enter name",style: TextStyle(color: Colors.red)),
                ],
              ),

              CustomStartButtonLoginScreen(
                onPressed: () {
                  if (_loginScreenController.name.isEmpty) {
                    print("empty");
                    //
                  }  else {
                    print("not empty");
                    //navigation
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

