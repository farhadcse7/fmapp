import 'package:flutter/material.dart';
import 'package:fmapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Module 11- Photo Gallery',
      home: HomeScreen(),
    );
  }
}

//note: for load image used terminal command= flutter run -d chrome --web-renderer html
