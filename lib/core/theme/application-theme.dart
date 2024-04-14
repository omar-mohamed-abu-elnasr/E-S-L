import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = true;
  static Color PrimaryColor = const Color(0xFF7E7C7C);
  static ThemeData lightTheme = ThemeData(
      primaryColor: PrimaryColor,
      scaffoldBackgroundColor: Color(0xFFE5E9F1),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF719CC8),
          onPrimary: Color(0xFF8D36C6),
          secondary: Color(0xFF010326),
          onSecondary: Colors.white,
          primary: const Color(0xFF7E7C7C),
          background: const Color(0xFFE5E9F1),
          onBackground: Colors.white),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.coda(
              fontSize: 30,
              color: Color(0xFF010326),
              fontWeight: FontWeight.w600),
          titleMedium: GoogleFonts.coda(
              fontSize: 24,
              color: Color(0xFF010326),
              fontWeight: FontWeight.w500),
          titleSmall: GoogleFonts.coda(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal),
          headlineSmall:
              GoogleFonts.coda(fontSize: 20, color: Color(0xFF010326)),
          bodyLarge: GoogleFonts.coda(fontSize: 24, color: Color(0xFF7E7C7C)),
          bodyMedium: GoogleFonts.coda(
              fontSize: 18,
              color: Color(0xFF010326),
              fontWeight: FontWeight.w500),
          bodySmall: GoogleFonts.coda(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          displaySmall: GoogleFonts.coda(
            fontSize: 15,
            color: Color(0xFF1478D9),
          )),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white.withOpacity(.99),
      ));

////////////////////////////////////////////////////////////////////////////////
  static ThemeData darkTheme = ThemeData(
      primaryColor: PrimaryColor,
      scaffoldBackgroundColor: Color(0xFF04080F),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF719CC8),
          onPrimary: Color(0xFF8D36C6),
          secondary: Colors.white,
          onSecondary: Colors.white,
          primary: const Color(0xFF7E7C7C),
          background: Color(0xFF04080F),
          onBackground: Color(0xFF121822)),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.coda(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),
        titleMedium: GoogleFonts.coda(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.w400),
        titleSmall: GoogleFonts.coda(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal),
        headlineSmall: GoogleFonts.coda(fontSize: 20, color: Color(0xFF858C8F)),
        bodyLarge: GoogleFonts.coda(fontSize: 24, color: Color(0xFF7E7C7C)),
        bodyMedium: GoogleFonts.coda(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        bodySmall: GoogleFonts.coda(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        displaySmall: GoogleFonts.coda(
          fontSize: 15,
          color: Color(0xFF1478D9),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xFF121822).withOpacity(.99),
      ));
}
