import 'package:echofetch/features/authentication/controllers/onboarding_controller.dart';
import 'package:echofetch/utils/constants/sizes.dart';
import 'package:echofetch/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final controller = OnBoardingController.instance;

    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: controller.skipPage,
        child: Text('Skip', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: colorScheme.primary),),
      ),
    );
  }
}