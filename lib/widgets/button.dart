import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPressed;
  final double widthButton;
  final double heightButton;
  final double titleSize;
  final double radius;

  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.heightButton = 50,
    this.widthButton = double.infinity,
    this.titleSize = 16,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthButton,
      height: heightButton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
        ),
        child: Text(
          textButton,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: titleSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
