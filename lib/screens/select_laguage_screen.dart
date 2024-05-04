
import 'package:echofetch/common/widgets/custom_buttons.dart';
import 'package:echofetch/features/authentication/screens/login/login_screen.dart';
import 'package:echofetch/widgets/language_card.dart';
import 'package:flutter/material.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() =>
      _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
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
          SizedBox(height: 14,),
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/language.png',
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 14),
            child: TElevatedButton(title: 'Select', onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
            }),
          ),
          
        ],
      ),
    );
  }
}
