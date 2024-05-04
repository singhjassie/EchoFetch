import 'package:echofetch/common/widgets/custom_card.dart';
import 'package:echofetch/features/authentication/screens/login/login_screen.dart';
import 'package:echofetch/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SelectUserTypeScreen extends StatelessWidget {
  const SelectUserTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select User Type'),),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.sm, horizontal: TSizes.md),
        child: Column(
          children: [
            SizedBox(height: 12,),
            CustomCard(title: 'Individual Customer', subtitle: 'Individual household waste producer', fill: false, onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LoginScreen();
              },));
            }),
            SizedBox(height: 12,),
            CustomCard(title: 'Bulk Waste Generator', subtitle: 'Factories, Hotels, Hospitals, Schools, Collages etc', fill: false, onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LoginScreen();
              },));
            }),
            SizedBox(height: 12,),
            CustomCard(title: 'Recycler', subtitle: 'Those who can create innovative Products from trash (Coming Soon)', fill: false, onClick: (){}),
            SizedBox(height: 12,),
            CustomCard(title: 'Waste Collectors', subtitle: 'Those who are working as waste collector / Kabarhiwala (Coming Soon)', fill: false, onClick: (){}),
            SizedBox(height: 12,),
          ],
        ),
      ),
    );
  }
}