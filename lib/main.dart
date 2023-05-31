import 'package:flutter/material.dart';
import 'Input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0D22)),
          scaffoldBackgroundColor: Color(0xFF0A0D22)),
      home: InputPage(),
    );
  }
}
