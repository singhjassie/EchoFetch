import 'package:echofetch/utils/constants/sizes.dart';
import 'package:echofetch/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: THelperFunctions.screenHeight() * 0.6,
            width: THelperFunctions.screenWidth() * 0.8,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(description,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: colorScheme.primary)),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
