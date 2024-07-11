import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.size,
      this.tooltip = ""});

  final VoidCallback onPressed;
  final IconData icon;
  final double size;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: UnconstrainedBox(
        child: Icon(
          icon,
          weight: 0.5, // Adjust weight as needed
          size: size,
          color: const Color(0xff4D4D4D),
        ),
      ),
      tooltip: tooltip,
    );
  }
}
