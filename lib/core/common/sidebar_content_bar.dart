import 'package:flutter/material.dart';
import 'package:responsive_login_ui/core/utils/screen_width.dart';

class SideBar extends StatelessWidget {
  final double minWidth;
  final double width;
  final double height;
  final Widget child;

  const SideBar({
    super.key,
    required this.minWidth,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = getScreenWidth(context);

    return Container(
      width: screenWidth < 700 ? minWidth : width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xfff9f9f9),
        border: Border.all(
            style: BorderStyle.solid, width: 0.1, color: Colors.grey[500]!),
      ),
      child: child,
    );
  }
}
