import 'package:echofetch/common/widgets/custom_card.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:echofetch/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echofetch/features/pickup/screens/new_request_screen.dart';

class PickupScreen extends StatefulWidget {
  const PickupScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _PickupScreenState();
  }
}

class _PickupScreenState extends State<PickupScreen> {
  void _navigateToNewRequestScreen() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => NewRequestScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: TSizes.md, vertical: TSizes.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
                child: Image.asset(
                    'assets/images/pickup/create-request.jpg',
                    fit: BoxFit.cover)),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            CustomCard(
                title: 'Create Pickup Request',
                subtitle: 'Schedule home waste pickup request',
                fill: true,
                onClick: _navigateToNewRequestScreen,
                ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            CustomCard(
                title: 'Track Vehicle',
                subtitle: 'Track pending request status',
                fill: false,
                onClick: (){},),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            CustomCard(
                title: 'Pickup History',
                subtitle: 'See previous request history',
                fill: false,
                onClick: (){},),
          ],
        ),
      ),
    );
  }
}



// 214, 224, 222
