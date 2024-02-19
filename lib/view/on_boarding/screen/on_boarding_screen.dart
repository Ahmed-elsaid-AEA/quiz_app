import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      initialPage: 1,
    );
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(scrollDirection: Axis.vertical,
              onPageChanged: (value) {
print(value);
              },
              controller:pageController ,
              itemCount: 3,
              itemBuilder: (context, index) =>
                  Container(
                color: index % 2 == 0 ? Colors.red : Colors.green,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                pageController.animateToPage(2,
                    duration: Duration(seconds: 10), curve: Curves.easeInCirc);
              },
              child: Text("data"))
        ],
      ),
    );
  }
}
