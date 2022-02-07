import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_1/pages/home_page.dart';
import 'package:practice_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_1/utils/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lexend().fontFamily,
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        "/": (context) => Loginpage(),
      },
      // initialRoute: "/",
    );
  }
}
