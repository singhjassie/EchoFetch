import 'package:echofetch/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    right: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
  );
}