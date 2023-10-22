import 'package:calculator_bloc/core/components/atomics/text/text_field.dart';
import 'package:calculator_bloc/core/constants/style/text/tex_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MathText extends StatelessWidget {
  const MathText({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sized.width,
      height: context.sized.dynamicHeight(.1),
      child: CustomTextField(
        text: text,
        style: TextStyleConstants.mathTextStyle,
      ),
    );
  }
}
