import 'package:echofetch/common/widgets/custom_buttons.dart';
import 'package:echofetch/features/shared/controllers/welcome_conroller.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:echofetch/utils/constants/sizes.dart';
import 'package:echofetch/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WelcomeController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 70, horizontal: TSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset( THelperFunctions.isDarkMode(context)?
              TImages.appLogoDark : TImages.appLogo,
            ),
            const SizedBox(
              height: TSizes.sm,
            ),
            Spacer(),
            TOutlinedButton(
              title: 'Login',
              onPressed: controller.login,
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text('or', style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TElevatedButton(title: 'Signup', onPressed: controller.signup)
          ],
        ),
      ),
    );
  }
}
