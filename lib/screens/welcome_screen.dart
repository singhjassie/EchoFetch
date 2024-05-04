import 'package:echofetch/screens/login_screen.dart';
import 'package:echofetch/screens/signup_screen.dart';
import 'package:echofetch/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20,bottom: 70),
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
                      Padding(padding: EdgeInsets.only(top: 105,bottom: 30), 
                      child: Image.asset("assets/images/EchoFetch-logo.png",height: 140,)),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Welcome to EchoFetch',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 170,),
            CustomButton(title: 'Login',
            onPressed:(){ Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) =>  LoginScreen()));}),
            SizedBox(height: 15,),
            Text('or'),
            SizedBox(height: 15,),
            CustomButton(title: 'Signup', 
            onPressed:(){ Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) =>  SignupScreen()));})

          ],
        ),
      ),
    );
  }

}