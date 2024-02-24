import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/controller/on_boarding/on_boarding_controller.dart';
import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/const_values.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';
import 'package:quiz_app/core/resources/width_values_managers.dart';
import 'package:quiz_app/view/on_boarding/widgets/custom_bottom_nav_bar_on_boargin_screen.dart';

import '../widgets/custom_items_page_view_on_boarding_screen.dart';

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
        outputDataTextStart: _onBoardingController.outPutDataStartText,
        onTapNext: () {
          _onBoardingController.onTabNext();
        },
        outputDataDotIndicator: _onBoardingController.outPutDataDotIndicator,
        onTapDotIndicator: (index) {
          _onBoardingController.onTapDotIndicator(index);
        },
        dotCount:  ConstValue.onBoardingListConst.length,
      ),
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (value) {
            _onBoardingController.onTapDotIndicator(value);
          },
          controller: _onBoardingController.onBoardgingPageViewController,
          itemCount: ConstValue.onBoardingListConst.length,
          itemBuilder: (context, index) => CustomItemsPageViewOnBoardingScreen(
            onBoardingScreenModel: ConstValue.onBoardingListConst[index],
          ),
        ),
      ),
    );
  }
}
