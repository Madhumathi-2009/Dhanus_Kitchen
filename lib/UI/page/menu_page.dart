import 'package:flutter/material.dart';

import '../widgets/menu_widgets.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // ============================================================
            // APP BAR
            // ============================================================
            SliverAppBar(
              pinned: true,
              backgroundColor: const Color(0xFFF8F7F4),
              elevation: 0,

              title: const Text(
                "Our Menu",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search_rounded),
                ),

                const SizedBox(width: 8),
              ],
            ),

            // ============================================================
            // MAIN CONTENT
            // ============================================================
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),

              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const Text(
                    "Explore our delicious homemade food 🍽️",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),

                  const SizedBox(height: 20),

                  // ====================================================
                  // CATEGORY FILTER
                  // ====================================================
                  SizedBox(
                    height: 45,

                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: const [
                        MenuCategoryChip(title: "All", isSelected: true),

                        MenuCategoryChip(title: "Rice"),

                        MenuCategoryChip(title: "Gravy"),

                        MenuCategoryChip(title: "Combos"),

                        MenuCategoryChip(title: "Snacks"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),

                  // ====================================================
                  // TODAY'S MENU
                  // ====================================================
                  const MenuSectionTitle(
                    title: "Today's Menu",
                    subtitle: "Freshly prepared for you",
                  ),

                  const SizedBox(height: 16),

                  const MenuFoodCard(
                    emoji: "🍛",
                    name: "Fish Rice",
                    description: "Fresh fish with homemade rice",
                    price: "₹150",
                    category: "Rice",
                  ),

                  const SizedBox(height: 14),

                  const MenuFoodCard(
                    emoji: "🍗",
                    name: "Chicken Rice",
                    description: "Homemade chicken with rice",
                    price: "₹180",
                    category: "Rice",
                  ),

                  const SizedBox(height: 14),

                  const MenuFoodCard(
                    emoji: "🦀",
                    name: "Crab Gravy",
                    description: "Special homemade crab gravy",
                    price: "₹120",
                    category: "Gravy",
                  ),

                  const SizedBox(height: 30),

                  // ====================================================
                  // COMBOS
                  // ====================================================
                  const MenuSectionTitle(
                    title: "Special Combos",
                    subtitle: "More food, better value",
                  ),

                  const SizedBox(height: 16),

                  const MenuComboCard(
                    emoji: "🍱",
                    title: "Family Rice Combo",
                    description: "Rice + Fish + Special Gravy",
                    price: "₹399",
                  ),

                  const SizedBox(height: 14),

                  const MenuComboCard(
                    emoji: "🍛",
                    title: "Budget Meal Combo",
                    description: "Rice + Curry + Side Dish",
                    price: "₹199",
                  ),

                  const SizedBox(height: 30),

                  // ====================================================
                  // INFO CARD
                  // ====================================================
                  const MenuInfoCard(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
