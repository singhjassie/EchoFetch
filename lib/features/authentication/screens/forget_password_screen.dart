import 'package:echofetch/features/authentication/screens/verification_screen.dart';
import 'package:echofetch/common/widgets/custom_buttons.dart';
import 'package:echofetch/common/widgets/input_box.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  bool rememberPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Expanded(
            flex: 5,
            child: Image.asset(TImages.forgetPasswordImg,
                      fit: BoxFit.cover,
                      width: double.infinity,),
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration:  BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formSignInKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter Email Address',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          color:Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      Text(
                        'Receive an email to reset your password',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w900,
                          color:Theme.of(context).colorScheme.secondary.withOpacity(0.6),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InputBox(hintText: 'Email', prefixIcon: Icons.mail, isPassword: false),
                      const SizedBox(
                        height: 15.0,
                      ),
                      
                      const SizedBox(
                        height: 95.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child:  TElevatedButton(title: 'Send', onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const  VerficationScreen()),
                              );
                          },)
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}