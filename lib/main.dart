import 'package:flutter/material.dart';

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
        primarySwatch: Colors.orange,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dhanu's Budjet Menu"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // Logo Area
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "🍽️ Dhanu's Budjet Menu",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Today's Menu
            const Text(
              "Today's Menu",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // Food Item
            Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: ListTile(
                leading: const Text(
                  "🍛",
                  style: TextStyle(fontSize: 35),
                ),
                title: const Text("Fish Rice"),
                subtitle: const Text("Delicious homemade food"),
                trailing: const Text(
                  "₹150",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            // Combos
            const SizedBox(height: 20),

            const Text(
              "🍱 Combos",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Offers
            const Text(
              "🎁 Offers",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Chat Button
            ElevatedButton(
              onPressed: () {
                print("Chat button clicked");
              },
              child: const Text("💬 Chat with Us"),
            ),

            const SizedBox(height: 15),

            // Feedback Button
            ElevatedButton(
              onPressed: () {
                print("Feedback button clicked");
              },
              child: const Text("⭐ Give Feedback"),
            ),
          ],
        ),
      ),
    );
  }
}