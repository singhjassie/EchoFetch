import 'package:echofetch/features/authentication/controllers/onboarding_controller.dart';
import 'package:echofetch/utils/constants/sizes.dart';
import 'package:echofetch/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 20,
        left: TSizes.defaultSpace+15,
        child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
            activeDotColor: colorScheme.primary,
            dotColor: colorScheme.onBackground,
            dotHeight: TSizes.sm,
            dotWidth: TSizes.sm,
            
          ),
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
        ));
  }
}