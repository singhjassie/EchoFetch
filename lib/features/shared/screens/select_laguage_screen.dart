import 'package:echofetch/common/widgets/language_card.dart';
import 'package:flutter/material.dart';

class SelectionLanguageScreen extends StatefulWidget {
  const SelectionLanguageScreen({super.key});

  @override
  State<SelectionLanguageScreen> createState() =>
      _SelectionLanguageScreenState();
}

class _SelectionLanguageScreenState extends State<SelectionLanguageScreen> {
  final List<String> items = ['English', 'Hindi', 'Punjabi', 'Others'];

  void _selectLanguage(selectedLanguage){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Select Your Language',
            style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).colorScheme.onBackground,
                fontWeight: FontWeight.w700),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/Translator-bro.png',
              fit: BoxFit.fitHeight,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.0,
              padding: EdgeInsets.all(16),
              children: items.map(
                (item) => LanguageCard(item: item, isSelected: false, onTap: _selectLanguage,)
              ).toList(),
            ),
          ),
          
        ],
      ),
    );
  }
}
