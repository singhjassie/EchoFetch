import 'package:echofetch/features/authentication/screens/login/login_screen.dart';
import 'package:echofetch/features/authentication/screens/verification_screen.dart';
import 'package:echofetch/common/widgets/custom_buttons.dart';
import 'package:echofetch/common/widgets/input_box.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formSignupKey = GlobalKey<FormState>();
  bool agreePersonalData = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Expanded(
            flex: 1,
            child: Image.asset(TImages.signupImg,
                      fit: BoxFit.fitHeight,
                      width: double.infinity,),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 20.0),
              decoration:  BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                // color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                // get started form
                child: Form(
                  key: _formSignupKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // get started text
                       Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      // full name
                      InputBox(hintText: 'Name', prefixIcon: Icons.person, isPassword: false),
                      const SizedBox(
                        height: 15.0,
                      ),
                      // email
                      InputBox(hintText: 'Email', prefixIcon: Icons.mail, isPassword: false),
                      const SizedBox(
                        height: 15.0,
                      ),
                      // password
                      InputBox(hintText: 'Password ', prefixIcon: Icons.password, isPassword: false),
                      const SizedBox(
                        height: 15.0,
                      ),
                      // password
                      InputBox(hintText: 'Confirm Password ', prefixIcon: Icons.password, isPassword: false),
                      const SizedBox(
                        height: 45.0,
                      ),
                      // signup button
                      SizedBox(
                        width: double.infinity,
                        child: TElevatedButton(title: 'Signup', onPressed: (){
                          Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) =>  VerficationScreen()),
                              );
                        })
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      // sign up divider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color:Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10,
                            ),
                            child: Text(
                              'Sign up with',
                              style: TextStyle(
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                               color:Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      // sign up social media logo
                      TOutlinedButton(title: 'Login with Google', 
                            onPressed:(){ }),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TOutlinedButton(title: 'Login with Phone Number', 
                            onPressed:(){ }),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // already have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account? ',
                            style: TextStyle(
                              color:Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const LoginScreen(),
                                ),
                              );
                            },
                            child:const  Text(
                              'Sign in',
                              style:  TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 24, 82, 8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
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