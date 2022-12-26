import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleChaptersWidget extends StatelessWidget {
  const TitleChaptersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 16,
        left: 16,
        bottom: 8,
      ),
      child: Text(
        'Chapters',
        style: GoogleFonts.oswald(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
