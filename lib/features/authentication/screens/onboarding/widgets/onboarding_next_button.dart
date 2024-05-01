import 'package:echofetch/features/authentication/controllers/onboarding_controller.dart';
import 'package:echofetch/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: 46,
      right: 30,
      child: ElevatedButton(
        onPressed: controller.nextPage,
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: colorScheme.primary,
        ),
        child: Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
