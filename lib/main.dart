import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(IntellectaApp());
}

class IntellectaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Intellecta Bimbel",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F8F8),
        fontFamily: "Poppins",
      ),
      home: HomePage(),
    );
  }
}