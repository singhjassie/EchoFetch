
import 'package:flutter/material.dart';

class RewardScreen extends StatelessWidget{
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Coming Soon',
        style: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary.withAlpha(125),
        ),
      )
    );
  }
}