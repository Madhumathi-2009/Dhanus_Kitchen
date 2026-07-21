import 'package:flutter/material.dart';
import 'core/ui/pages/home_page.dart';

void main() {
  runApp(const DhanuBudgetMenuApp());
}

class DhanuBudgetMenuApp extends StatelessWidget {
  const DhanuBudgetMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dhanu's Budjet Menu",

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F7F4),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE76F51),
        ),

        fontFamily: 'Roboto',
      ),

      home: const HomePage(),
    );
  }
}
