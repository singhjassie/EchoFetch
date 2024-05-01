import 'package:echofetch/features/authentication/screens/login/login_screen.dart';
import 'package:echofetch/features/authentication/screens/signup_screen.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  static WelcomeController get instance => Get.find();

  void login(){
    Get.to(LoginScreen());
  }

  void signup(){
    Get.to(SignupScreen());
  }
}
