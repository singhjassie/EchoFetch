import 'package:flutter/material.dart';

class NewRequestOverlay extends StatefulWidget{
  const NewRequestOverlay({super.key});
  @override
  State<StatefulWidget> createState() {
    return _NewRequestOverlayState();
  }
}

class _NewRequestOverlayState extends State<NewRequestOverlay>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        Text('Progress Bar'),
        Text('Item List'),
      ]),
    );
  }
}