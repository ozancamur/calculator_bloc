import 'package:flutter/material.dart';

class AtomicButton extends StatelessWidget {
  const AtomicButton({
    required this.onPressed,
    required this.style,
    required this.child,
    super.key,
  });

  final Function() onPressed;
  final ButtonStyle style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }
}
