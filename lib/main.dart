import 'package:echofetch/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:echofetch/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(GetMaterialApp(
    title: 'EchoFetch',
    themeMode: ThemeMode.system,
    theme: TAppTheme.lightTheme,
    darkTheme: TAppTheme.darkTheme,
    home: OnBoardingScreen(),
  ));
}
