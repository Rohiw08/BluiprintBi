import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomSearchBar extends StatelessWidget {
  final double height;
  final double width;
  final String hintText;

  const CustomSearchBar({
    required this.height,
    required this.width,
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        // controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500]!, width: 0.1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500]!, width: 0.1),
          ),
          filled: true,
          fillColor: const Color(0xfff2f2f2),
          hintText: hintText,
          hintStyle: GoogleFonts.inter(
              color: const Color(0xff4D4D4D),
              fontWeight: FontWeight.w400,
              fontSize: 12
              // fontWeight: FontWeight.w400,
              ),
        ),
      ),
    );
  }
}
