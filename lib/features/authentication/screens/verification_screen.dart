import 'package:echofetch/features/authentication/screens/forget_password_screen.dart';
import 'package:echofetch/features/authentication/screens/new_password_screen.dart';
import 'package:echofetch/common/widgets/custom_button.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerficationScreen extends StatefulWidget {
  const VerficationScreen({super.key});

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
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
            child: Image.asset(TImages.otpVerificationImg,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // opt verfication text
                       Text(
                        'OTP Verfication',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      // description
                       Text(
                        'We will send you one time password this email address/phone number.',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w900,
                          color:Theme.of(context).colorScheme.secondary.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: 10,),
                      // change email
                       Row(
                        children: [
                          const Text(
                            'example@gmail.com ',
                            style: TextStyle(
                              fontSize: 12
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const ForgetPasswordScreen(),
                                ),
                              );
                            },
                            child:  Text(
                              'Change email?',
                              style:  TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 60,),
                      // otp enter
                        Row(
                          children: [
                           SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              onChanged: (value){
                                if(value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                           ),
                           SizedBox(width: 10,),
                           SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              onChanged: (value){
                                if(value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                           ),
                          SizedBox(width: 10,),
                           SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              onChanged: (value){
                                if(value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                           ),
                           SizedBox(width: 10,),
                           SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              onChanged: (value){
                                if(value.length==1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                           ),
                          ],
                        ),
                        // resend code
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           Text(
                            'Resend Code? ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                        ],
                      ),
                        SizedBox(height: 100,),
                      // signup button
                      SizedBox(
                        width: double.infinity,
                        child: CustomButton(title: 'Send', onPressed: (){
                          Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) =>  NewPasswordScreen()),
                              );
                        })
                      ),
                      const SizedBox(
                        height: 30.0,
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