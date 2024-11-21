import 'package:calculator/constants/app_const.dart';
import 'package:calculator/views/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: kprimary),
        
      ),
      home:const CalculatorScreen(),
    );
  }
}

