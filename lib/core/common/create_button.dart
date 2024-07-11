import 'package:flutter/material.dart';
import 'package:responsive_login_ui/core/utils/button_text.dart';

class CreateButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final IconData icon;
  final VoidCallback onPressed; // Callback function type (no arguments)

  const CreateButton({
    required this.height,
    required this.width,
    required this.text,
    required this.onPressed,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton.icon(
        onPressed: onPressed, // Use the provided callback function
        icon: Icon(
          icon,
          weight: 0.3,
          size: 20,
          color: const Color(0xff4D4D4D),
        ),
        label: buttonText(text),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
              side: BorderSide(
                color: Colors.grey[500]!, width: 0.2, // Set border width
              ),
            ),
          ),
        ),
      ),
    );
  }
}
