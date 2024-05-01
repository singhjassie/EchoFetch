import 'package:echofetch/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
  // Headline
    headlineLarge: GoogleFonts.lato().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: TColors.black,
    ),
    headlineMedium: GoogleFonts.lato().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
    headlineSmall: GoogleFonts.lato().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: TColors.black,
    ),

  // Title
    titleLarge: GoogleFonts.lato().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
    titleMedium: GoogleFonts.lato().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: TColors.black,
    ),
    titleSmall: GoogleFonts.lato().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: TColors.black,
    ),

  // Body
    bodyLarge: GoogleFonts.lato().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TColors.black,
    ),
    bodyMedium: GoogleFonts.lato().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.black,
    ),
    bodySmall: GoogleFonts.lato().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.black.withOpacity(.6),
    ),

  // Label
    labelLarge: GoogleFonts.lato().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.black,
    ),
    labelMedium: GoogleFonts.lato().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.black.withOpacity(.8),
    ),
    labelSmall: GoogleFonts.lato().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.black.withOpacity(.6),
    ),  
  );
  static TextTheme darkTextTheme = TextTheme(
    // Headline
    headlineLarge: GoogleFonts.lato().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: TColors.white,
    ),
    headlineMedium: GoogleFonts.lato().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
    headlineSmall: GoogleFonts.lato().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: TColors.white,
    ),

  // Title
    titleLarge: GoogleFonts.lato().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
    titleMedium: GoogleFonts.lato().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: TColors.white,
    ),
    titleSmall: GoogleFonts.lato().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: TColors.white,
    ),

  // Body
    bodyLarge: GoogleFonts.lato().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TColors.white,
    ),
    bodyMedium: GoogleFonts.lato().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.white,
    ),
    bodySmall: GoogleFonts.lato().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.white.withOpacity(.6),
    ),

  // Label
    labelLarge: GoogleFonts.lato().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.white,
    ),
    labelMedium: GoogleFonts.lato().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.white.withOpacity(.8),
    ),
    labelSmall: GoogleFonts.lato().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.white.withOpacity(.6),
    ),
  );
}