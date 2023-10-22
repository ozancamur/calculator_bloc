import 'package:calculator_bloc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';

class TextStyleConstants {
  TextStyleConstants._();

  static TextStyle get buttonTextStyle => TextStyle(
        fontSize: 25,
        color: ColorConstants.buttonTextColor,
      );

  static TextStyle get resultTextStyle => TextStyle(
        fontSize: 60,
        color: ColorConstants.resultTextColor,
      );

  static TextStyle get mathTextStyle => TextStyle(
        fontSize: 20,
        color: ColorConstants.mathTextColor,
      );
}
