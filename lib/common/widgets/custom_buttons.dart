import 'package:flutter/material.dart';

class TElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const TElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(title), 
        style: Theme.of(context).elevatedButtonTheme.style),
    );
  }
}

class TOutlinedButton extends StatelessWidget {
  const TOutlinedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
