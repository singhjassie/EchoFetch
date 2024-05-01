import 'package:echofetch/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.black,
      side: const BorderSide(color: TColors.primaryLight),
      textStyle: const TextStyle(
          fontSize: 16, color: TColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    foregroundColor: TColors.white,
    side: const BorderSide(color: TColors.primaryDark),
    textStyle: const TextStyle(
        fontSize: 16, color: TColors.white, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));
}
