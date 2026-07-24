import 'package:flutter/material.dart';

// ============================================================
// MENU CATEGORY CHIP
// ============================================================

class MenuCategoryChip extends StatelessWidget {
  final String title;
  final bool isSelected;

  const MenuCategoryChip({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),

      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFE76F51) : Colors.white,

        borderRadius: BorderRadius.circular(25),

        border: Border.all(
          color: isSelected ? const Color(0xFFE76F51) : Colors.grey.shade200,
        ),
      ),

      child: Center(
        child: Text(
          title,

          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey.shade700,

            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// ============================================================
// MENU SECTION TITLE
// ============================================================

class MenuSectionTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const MenuSectionTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          title,

          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 4),

        Text(
          subtitle,

          style: const TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ],
    );
  }
}

// ============================================================
// MENU FOOD CARD
// ============================================================

class MenuFoodCard extends StatelessWidget {
  final String emoji;
  final String name;
  final String description;
  final String price;
  final String category;

  const MenuFoodCard({
    super.key,
    required this.emoji,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [
          // ============================================================
          // FOOD IMAGE / EMOJI
          // ============================================================
          Container(
            height: 90,
            width: 90,

            decoration: BoxDecoration(
              color: const Color(0xFFFFE8DC),

              borderRadius: BorderRadius.circular(16),
            ),

            child: Center(
              child: Text(emoji, style: const TextStyle(fontSize: 48)),
            ),
          ),

          const SizedBox(width: 14),

          // ============================================================
          // FOOD DETAILS
          // ============================================================
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  name,

                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  description,

                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    Text(
                      price,

                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE76F51),
                      ),
                    ),

                    const Spacer(),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),

                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF3D6),

                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Text(
                        category,

                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8A5A00),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// MENU COMBO CARD
// ============================================================

class MenuComboCard extends StatelessWidget {
  final String emoji;
  final String title;
  final String description;
  final String price;

  const MenuComboCard({
    super.key,
    required this.emoji,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFFF3D6), Color(0xFFFFE8DC)],
        ),

        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 48)),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,

                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  description,

                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),

                const SizedBox(height: 8),

                Text(
                  price,

                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE76F51),
                  ),
                ),
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios_rounded, size: 18),
        ],
      ),
    );
  }
}

// ============================================================
// MENU INFO CARD
// ============================================================

class MenuInfoCard extends StatelessWidget {
  const MenuInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xFF264653),

        borderRadius: BorderRadius.circular(20),
      ),

      child: const Row(
        children: [
          Icon(Icons.restaurant_rounded, color: Colors.white, size: 32),

          SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Freshly prepared with care ❤️",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Menu availability may change daily.",

                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
