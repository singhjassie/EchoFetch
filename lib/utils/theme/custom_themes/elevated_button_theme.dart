import 'package:echofetch/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.white,
      backgroundColor: TColors.primaryLight,
      disabledForegroundColor: TColors.grey,
      disabledBackgroundColor: TColors.grey,
      side: const BorderSide(color: TColors.primaryLight),
      padding: const EdgeInsets.symmetric(vertical: 0),
      textStyle: const TextStyle(
        fontSize: 16,
        color: TColors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.black,
      backgroundColor: TColors.primaryDark,
      disabledForegroundColor: TColors.grey,
      disabledBackgroundColor: TColors.grey,
      side: const BorderSide(color: TColors.primaryDark),
      padding: const EdgeInsets.symmetric(vertical: 0),
      textStyle: const TextStyle(
        fontSize: 16,
        color: TColors.black,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
