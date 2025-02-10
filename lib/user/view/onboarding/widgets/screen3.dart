import 'package:easytrash/user/view/onboarding/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OnBoardWidget(
                  imagePath: 'assets/onboarding3.png',
                  title1: 'Clean Environment, Easy Pickup',
                  description1: ' Join Green Bin today',
                  description2: 'keeping your community clean',
                  description3: 'has never been easier.',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
