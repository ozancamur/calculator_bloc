import 'package:calculator_bloc/core/components/atomics/button/atomic_button.dart';
import 'package:calculator_bloc/core/constants/style/text/tex_style_constants.dart';
import 'package:flutter/material.dart';

class ButtonField extends StatelessWidget {
  const ButtonField({
    required this.onPressed,
    required this.style,
    required this.text,
    super.key,
  });

  final Function() onPressed;
  final ButtonStyle style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AtomicButton(
      onPressed: onPressed,
      style: style,
      child: Text(
        text,
        style: TextStyleConstants.buttonTextStyle
      ),
    );
  }
}
