<<<<<<< HEAD
import 'package:flutter/material.dart';

import 'core/main_navigatiion.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE76F51)),
        scaffoldBackgroundColor: const Color(0xFFF8F7F4),
      ),

      home: const MainNavigationPage(),
    );
  }
}
=======
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

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE76F51),
        ),

        scaffoldBackgroundColor: const Color(0xFFF8F7F4),
      ),

      home: const HomePage(),
    );
  }
}
>>>>>>> bc83e3ecec5c1dd6f35d62dce91d628c898ce952
