import 'package:calculator_bloc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ButtonStyleConstants {
  ButtonStyleConstants(this.buttonBackgroundColor, BuildContext context)
      : currentContext = context;
  final Color buttonBackgroundColor;
  final BuildContext currentContext;

  ButtonStyle get buttonStyle => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(width: 1, color: ColorConstants.buttonTextColor)),
        backgroundColor: buttonBackgroundColor,
        foregroundColor: ColorConstants.buttonTextColor,
        fixedSize: Size(
          currentContext.sized.dynamicWidth(.2),
          currentContext.sized.dynamicHeight(.085),
        ),
      );
}
