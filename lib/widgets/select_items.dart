import 'package:flutter/material.dart';

class SelectItemStep extends StatelessWidget{
  const SelectItemStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Items'),
        ElevatedButton(onPressed: (){}, child: Text('Next'))
      ],
    );
  }
}