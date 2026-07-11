import 'package:flutter/material.dart';
import 'package:temperatureconvector/temperature_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}
