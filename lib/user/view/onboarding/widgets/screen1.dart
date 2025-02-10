import 'package:easytrash/user/view/onboarding/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

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
                  imagePath: 'assets/onboarding1.jpg',
                  title1: 'Effortless Waste Disposal',
                  description1: 'Welcome to Green Bin, where',
                  description2: 'eco-friendly waste management',
                  description3: 'starts at your doorstep.',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
