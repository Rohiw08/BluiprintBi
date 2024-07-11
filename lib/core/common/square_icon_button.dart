import 'package:flutter/material.dart';
import 'package:responsive_login_ui/core/utils/button_text.dart';
import 'package:responsive_login_ui/core/utils/screen_width.dart';

class SquareIconButton extends StatelessWidget {
  const SquareIconButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.height,
      required this.iconSize,
      required this.maxHeight});

  final IconData icon;
  final String text;
  final double height;
  final double iconSize;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    double screenWidth = getScreenWidth(context);

    return Container(
      height: screenWidth < 700 ? height - 5 : maxHeight - 5,
      width: double.maxFinite - 5,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                weight: 0.5, // Adjust weight as needed
                size: iconSize,
                color: const Color(0xff4D4D4D),
              ),
              if (screenWidth > 700) buttonText(text)
            ],
          ),
        ),
      ),
    );
  }
}
