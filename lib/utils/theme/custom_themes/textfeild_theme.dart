import 'package:echofetch/utils/constants/colors.dart';
import 'package:echofetch/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: TColors.primaryLight,
      suffixIconColor: TColors.primaryLight,
// constraints: const BoxConstraints.expand(height: 14.inputFieldHeight), labelStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.black),
      hintStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.black),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle:
          const TextStyle().copyWith(color: TColors.primaryLight.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
        borderSide: const BorderSide(width: 1, color: TColors.primaryLight),
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
        borderSide: const BorderSide(width: 1, color: TColors.primaryLight),
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
        borderSide: const BorderSide(width: 2, color: TColors.primaryLight),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
        borderSide: const BorderSide(width: 1, color: TColors.error),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
        borderSide: const BorderSide(width: 2, color: TColors.warning),
      ));

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: TColors.primaryDark,
    suffixIconColor: TColors.primaryDark,
// constraints: const BoxConstraints.expand (height: 14.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: TColors.primaryDark.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: TColors.primaryDark),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: TColors.primaryDark),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: TColors.primaryDark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: TColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: TColors.warning),
    ),
  );
}
