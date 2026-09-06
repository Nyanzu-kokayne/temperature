import 'package:flutter/material.dart';
import 'package:temperatureconvector/notifiers.dart';
import 'package:temperatureconvector/temperature_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
          
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(221, 219, 210, 235),
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
        );
      },
    );
  }
}
