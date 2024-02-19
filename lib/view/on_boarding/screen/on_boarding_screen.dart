import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/core/resources/assets_values_manager.dart';
import 'package:quiz_app/core/resources/font_managers.dart';
import 'package:quiz_app/core/resources/routes_manager.dart';
import 'package:quiz_app/core/resources/strings_values.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 52, right: 32, left: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              StringsValues.kSkip,
              style: TextStyle(fontSize: FontSize.f15),
            ),
            Container(
                height: 50,
                width: 50,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 5,
                  ),
                )),
            const Text(StringsValues.kNext,
                style: TextStyle(
                    fontSize: FontSize.f15, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
