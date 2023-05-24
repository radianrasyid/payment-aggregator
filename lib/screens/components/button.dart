import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key,
    required this.onTap,
    required this.buttonName,
  });

  final Function()? onTap;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00A3B4),
            minimumSize: const Size.fromHeight(50),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          buttonName,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),
        ));
  }
}
