import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/controller/on_boarding/on_boarding_controller.dart';
import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/view/on_boarding/widgets/custom_bottom_nav_bar_on_boargin_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late OnBoardingController _onBoardingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onBoardingController = OnBoardingController();
  }

  @override
  void dispose() {
    _onBoardingController.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBarOnBoardgingScreen(
        onTapNext: () {
          _onBoardingController.onTabNext();
        },
        outputDataDotIndicator: _onBoardingController.outPutData,
        onTapDotIndicator: (index) {
          _onBoardingController.onTapDotIndicator(index);
        },
        dotCount: 3,
      ),

      body: SafeArea(
        child: PageView.builder(
          itemBuilder: (context, index) => Container(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        height: HeightValuesManager.h400,
                        AssetsValuesManager.kOnBoardgingImage1,
                      ),
                      const SizedBox(
                        height: HeightValuesManager.h108,
                      ),
                      const Text(
                        StringsValues.kOnBoardingTitle1,
                        style: TextStyle(
                            fontSize: FontSize.f32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: HeightValuesManager.h24,
                      ),
                      const Text(
                        StringsValues.kOnBoardingTitle1,
                        style: TextStyle(
                            fontSize: FontSize.f21,)
                      ) 
                    ]),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
