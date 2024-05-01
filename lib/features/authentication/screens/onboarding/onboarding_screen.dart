import 'package:echofetch/features/authentication/controllers/onboarding_controller.dart';
import 'package:echofetch/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:echofetch/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:echofetch/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:echofetch/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:echofetch/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onboardingImg1,
                title: TText.onBoardingTitle1,
                description: TText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onboardingImg2,
                title: TText.onBoardingTitle2,
                description: TText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onboardingImg3,
                title: TText.onBoardingTitle3,
                description: TText.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
