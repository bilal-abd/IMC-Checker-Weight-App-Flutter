
import 'package:flutter/material.dart';
import 'package:imc_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculateur IMC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow,
      visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      
      home: HomeScreen(),
      
        
        
    
    );
  }
}