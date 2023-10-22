import 'package:calculator_bloc/core/components/atomics/button/button_field.dart';
import 'package:calculator_bloc/core/constants/color/color_constants.dart';
import 'package:calculator_bloc/core/constants/style/button/button_style_contants.dart';
import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ButtonField(
      onPressed: onPressed,
      style: ButtonStyleConstants(ColorConstants.calGrey, context).buttonStyle,
      text: text,
    );
  }
}
