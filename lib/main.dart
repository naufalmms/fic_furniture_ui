import 'package:fic_furniture_shop_ui/pages/home/home_screen.dart';
import 'package:fic_furniture_shop_ui/pages/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFL_FIC_Furniture_App',
      theme: ThemeData(
          primaryColor: const Color(0xFFF8F8F8),
          // textTheme: GoogleFonts.interTextTheme(),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.transparent,
          )),
      home: const MainScreen(),
    );
  }
}
