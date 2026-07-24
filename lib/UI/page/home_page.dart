import 'package:flutter/material.dart';

import '../widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // App Bar
            SliverAppBar(
              pinned: true,
              backgroundColor: const Color(0xFFF8F7F4),
              elevation: 0,

              title: const AppLogo(),

              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none_rounded),
                ),

                const SizedBox(width: 8),
              ],
            ),

            // Main Content
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),

              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  // Greeting
                  const Text(
                    "Good morning 👋",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    "What's cooking today?",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  // Today's Menu Banner
                  const TodayMenuBanner(),

                  const SizedBox(height: 30),

                  // Today's Menu Header
                  SectionHeader(
                    title: "Today's Menu",
                    action: "View all",
                    onPressed: () {},
                  ),

                  const SizedBox(height: 16),

                  // Food Cards
                  SizedBox(
                    height: 245,

                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: const [
                        FoodCard(
                          emoji: "🍛",
                          name: "Fish Rice",
                          description: "Fresh fish with rice",
                          price: "₹150",
                        ),

                        FoodCard(
                          emoji: "🍗",
                          name: "Chicken Rice",
                          description: "Homemade chicken meal",
                          price: "₹180",
                        ),

                        FoodCard(
                          emoji: "🦀",
                          name: "Crab Gravy",
                          description: "Special homemade gravy",
                          price: "₹120",
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Combos
                  SectionHeader(
                    title: "Popular Combos",
                    action: "See all",
                    onPressed: () {},
                  ),

                  const SizedBox(height: 16),

                  const ComboCard(),

                  const SizedBox(height: 30),

                  // Offers
                  SectionHeader(
                    title: "Special Offers",
                    action: "See all",
                    onPressed: () {},
                  ),

                  const SizedBox(height: 16),

                  const OfferCard(),

                  const SizedBox(height: 30),

                  // Services
                  const Text(
                    "Need help?",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: FeatureCard(
                          icon: Icons.chat_bubble_outline_rounded,
                          title: "Chat with us",
                          subtitle: "Bulk orders & enquiries",
                          onPressed: () {},
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: FeatureCard(
                          icon: Icons.star_outline_rounded,
                          title: "Feedback",
                          subtitle: "Tell us what you think",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
