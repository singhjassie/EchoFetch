import 'package:echofetch/features/authentication/screens/login_screen.dart';
import 'package:echofetch/common/widgets/custom_button.dart';
import 'package:echofetch/common/widgets/input_box.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  bool rememberPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Expanded(
            flex: 2,
            child: Image.asset(TImages.resetPasswordImg,
                      fit: BoxFit.cover,
                      width: double.infinity,),
          ),
          Expanded(
            flex: 3,
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
                        'Set New Password',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          color:Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        'Set the new password for your account',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w900,
                          color:Theme.of(context).colorScheme.secondary.withOpacity(0.6),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InputBox(hintText: 'Password', prefixIcon: Icons.password, isPassword:false ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      InputBox(hintText: 'Confirm Password', prefixIcon: Icons.password, isPassword: true),
                      const SizedBox(
                        height: 65.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child:  CustomButton(title: 'Reset Password', onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const  LoginScreen()),
                              );
                            
                          },)
                        ),
                      const SizedBox(
                        height: 25.0,
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