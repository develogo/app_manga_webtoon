import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manga_webtoon/common/theme/colors/app_colors.dart';

class AppTheme {
  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFF171717),
        primarySwatch: AppColor.primary,
        // backgroundColor: AppColor.primary,
        // colorScheme: const ColorScheme.light(
        //   primary: AppColor.primary,
        //   background: Color(0xFF171717),
        // ),
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
}
