import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:holiday_booking_app_ui/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: HexColor('#4C9FC1'),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: Theme.of(context).textTheme.labelMedium
        )),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.manrope(fontWeight: FontWeight.w800,fontSize: 28,color: HexColor('#464646')),
          titleMedium: GoogleFonts.manrope(fontWeight: FontWeight.w600,fontSize: 14,color: HexColor('#464646').withOpacity(0.5)),
          titleSmall: GoogleFonts.manrope(fontWeight: FontWeight.w700,fontSize: 16,color: HexColor('#464646')),
          labelMedium: GoogleFonts.manrope(fontWeight: FontWeight.w700,fontSize: 16,color: HexColor('#FFFFFF')),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
