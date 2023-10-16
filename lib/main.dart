import 'package:flutter/material.dart';
import 'package:fmapp/screens/home_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'LT 11 Weather App',
      home: HomeScreen(),
    );
  }
}
