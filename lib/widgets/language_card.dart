import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({super.key, required this.item, required this.isSelected, required this.onTap});

  final String item;
  final void Function(String)  onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap(item);
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          border: isSelected? Border.all() : null,
          borderRadius: BorderRadius.circular(12)
        ),
        padding: const EdgeInsets.all(5.0), // Reduce outer margin
        child: Center(child: Text(item, style: Theme.of(context).textTheme.headlineMedium,)),
      ),
    );
  }
}
