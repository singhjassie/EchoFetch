import 'package:echofetch/utils/constants/colors.dart';
import 'package:echofetch/utils/theme/custom_themes/appbar_theme.dart';
import 'package:echofetch/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:echofetch/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:echofetch/utils/theme/custom_themes/chip_theme.dart';
import 'package:echofetch/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:echofetch/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:echofetch/utils/theme/custom_themes/text_theme.dart';
import 'package:echofetch/utils/theme/custom_themes/textfeild_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: TColors.lightColorScheme,
    fontFamily: GoogleFonts.lato().fontFamily,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    textTheme: TTextTheme.lightTextTheme, 
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: TColors.darkColorScheme,
    fontFamily: GoogleFonts.lato().fontFamily,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    textTheme: TTextTheme.darkTextTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}