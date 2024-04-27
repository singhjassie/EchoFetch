import 'package:echofetch/echofetch_app.dart';
import 'package:echofetch/features/authentication/screens/forget_password_screen.dart';
import 'package:echofetch/features/authentication/screens/signup_screen.dart';
import 'package:echofetch/common/widgets/custom_button.dart';
import 'package:echofetch/common/widgets/input_box.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            child: Image.asset(TImages.loginImg,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          color:Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InputBox(hintText: 'Email', prefixIcon: Icons.mail, isPassword: false),
                      const SizedBox(
                        height: 15.0,
                      ),
                      InputBox(hintText: 'Password', prefixIcon: Icons.password, isPassword: true),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: rememberPassword,
                                onChanged: (bool? value) {
                                  setState(() {
                                    rememberPassword = value!;
                                  });
                                },
                                activeColor:Theme.of(context).colorScheme.primary,
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(
                                  color:Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const  ForgetPasswordScreen()),
                              ),
                            child:Text(
                              'Forget password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                               color:Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child:  CustomButton(title: 'Login', onPressed: () {
                            if (_formSignInKey.currentState!.validate() &&
                                rememberPassword) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const  EchoFetchApp()),
                              );
                            } else if (!rememberPassword) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Please agree to the processing of personal data')),
                              );
                            }
                          },)
                        ),
                      const SizedBox(
                        height: 15.0,
                      ),
                       // don't have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account? ',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => SignupScreen(),
                                ),
                              );
                            },
                            child:const  Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 30, 91, 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
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
                                // color: Colors.black45,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              // color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      CustomButton(title: 'Login with Google', 
                            onPressed:(){ }),
                      const SizedBox(
                        height: 25.0,
                      ),
                      CustomButton(title: 'Login with Phone Number', 
                            onPressed:(){ }),
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