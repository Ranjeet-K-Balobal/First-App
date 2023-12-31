import 'package:example1_test/Pages/home_page.dart';
import 'package:example1_test/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  
   @override
  Widget build(BuildContext context) {


    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light ,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => Homepage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}
