import 'package:easytrash/user/view/onboarding/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

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
                  imagePath: 'assets/onboarding2.jpg',
                  title1: 'Clean Environment, Easy Pickup',
                  description1: 'With Green Bin, managing waste',
                  description2: 'is simple and convenient,',
                  description3: ' right from your home.',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
