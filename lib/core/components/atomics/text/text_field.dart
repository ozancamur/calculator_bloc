import 'package:calculator_bloc/core/components/atomics/text/atomic_text.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.text,
    required this.style,
     super.key,
  });

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AtomicText(text: text, style: style);
  }
}
