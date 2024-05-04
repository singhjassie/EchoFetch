import 'package:echofetch/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.fill, required this.onClick,
  });

  final String title;
  final String subtitle;
  final bool fill;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: EdgeInsets.all(TSizes.md),
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.primary, width: 2),
        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
        color: fill ? colorScheme.primary : null,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: fill ? colorScheme.background : null),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                subtitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: fill ? colorScheme.background : null),
              )
            ],
          ),
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: onClick,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: fill ? colorScheme.background : null,
                  size: 34,
                ),
              ))
        ],
      ),
    );
  }
}