import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/mobilenumber.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
      ),
      home: mobilenumber(),
    );
  }
}
