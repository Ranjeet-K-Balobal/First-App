import 'package:example1_test/Pages/home_page.dart';
import 'package:example1_test/Pages/login_page.dart';
import 'package:flutter/material.dart';


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
        primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => Homepage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}
