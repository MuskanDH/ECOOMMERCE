// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Import your splash screen widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(), // Display the splash screen as the initial route
    );
  }
}
