<<<<<<< HEAD
import 'package:flutter/material.dart';

// ============================================================
// APP LOGO
// ============================================================

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42,
          width: 42,

          decoration: BoxDecoration(
            color: const Color(0xFFE76F51),
            borderRadius: BorderRadius.circular(14),
          ),

          child: const Center(
            child: Text(
              "D",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        const SizedBox(width: 12),

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dhanu's",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Text(
              "BUDJET MENU",
              style: TextStyle(
                fontSize: 11,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ============================================================
// TODAY'S MENU BANNER
// ============================================================

class TodayMenuBanner extends StatelessWidget {
  const TodayMenuBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFE76F51), Color(0xFFF4A261)],
        ),

        borderRadius: BorderRadius.circular(24),
      ),

      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text(
                  "TODAY'S MENU",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Fresh homemade meals\nmade with love ❤️",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  "Updated today",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.85),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          const Text("🍛", style: TextStyle(fontSize: 70)),
        ],
      ),
    );
  }
}

// ============================================================
// SECTION HEADER
// ============================================================

class SectionHeader extends StatelessWidget {
  final String title;
  final String action;
  final VoidCallback onPressed;

  const SectionHeader({
    super.key,
    required this.title,
    required this.action,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),

        TextButton(
          onPressed: onPressed,

          child: Text(
            action,
            style: const TextStyle(
              color: Color(0xFFE76F51),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

// ============================================================
// FOOD CARD
// ============================================================

class FoodCard extends StatelessWidget {
  final String emoji;
  final String name;
  final String description;
  final String price;

  const FoodCard({
    super.key,
    required this.emoji,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,

      margin: const EdgeInsets.only(right: 14),

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Expanded(
            child: Container(
              width: double.infinity,

              decoration: BoxDecoration(
                color: const Color(0xFFFFE8DC),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Center(
                child: Text(emoji, style: const TextStyle(fontSize: 65)),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 4),

          Text(
            description,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),

          const SizedBox(height: 8),

          Text(
            price,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE76F51),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// COMBO CARD
// ============================================================

class ComboCard extends StatelessWidget {
  const ComboCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFFFFF3D6),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          const Text("🍱", style: TextStyle(fontSize: 48)),

          const SizedBox(width: 16),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Family Rice Combo",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 5),

                Text(
                  "Rice + Fish + Special Gravy",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),

                SizedBox(height: 8),

                Text(
                  "₹399",
                  style: TextStyle(
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
// OFFER CARD
// ============================================================

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xFF264653),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "SPECIAL OFFER 🎉",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Buy 2 Rice Meals\nGet a Special Gravy FREE!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Limited time offer",
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),

          const Text("🎁", style: TextStyle(fontSize: 55)),
        ],
      ),
    );
  }
}

// ============================================================
// FEATURE CARD
// ============================================================

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child: Container(
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(18),

          border: Border.all(color: Colors.grey.shade200),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Icon(icon, size: 28, color: const Color(0xFFE76F51)),

            const SizedBox(height: 12),

            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),

            const SizedBox(height: 4),

            Text(
              subtitle,
              style: const TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';


// ============================================================
// APP LOGO
// ============================================================

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42,
          width: 42,

          decoration: BoxDecoration(
            color: const Color(0xFFE76F51),
            borderRadius: BorderRadius.circular(14),
          ),

          child: const Center(
            child: Text(
              "D",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        const SizedBox(width: 12),

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dhanu's",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "BUDJET MENU",
              style: TextStyle(
                fontSize: 11,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


// ============================================================
// TODAY'S MENU BANNER
// ============================================================

class TodayMenuBanner extends StatelessWidget {
  const TodayMenuBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFE76F51),
            Color(0xFFF4A261),
          ],
        ),

        borderRadius: BorderRadius.circular(24),
      ),

      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text(
                  "TODAY'S MENU",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Fresh homemade meals\nmade with love ❤️",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  "Updated today",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          const Text(
            "🍛",
            style: TextStyle(
              fontSize: 70,
            ),
          ),
        ],
      ),
    );
  }
}


// ============================================================
// SECTION HEADER
// ============================================================

class SectionHeader extends StatelessWidget {
  final String title;
  final String action;
  final VoidCallback onPressed;

  const SectionHeader({
    super.key,
    required this.title,
    required this.action,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),

        TextButton(
          onPressed: onPressed,

          child: Text(
            action,
            style: const TextStyle(
              color: Color(0xFFE76F51),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}


// ============================================================
// FOOD CARD
// ============================================================

class FoodCard extends StatelessWidget {
  final String emoji;
  final String name;
  final String description;
  final String price;

  const FoodCard({
    super.key,
    required this.emoji,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,

      margin: const EdgeInsets.only(right: 14),

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(20),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Expanded(
            child: Container(
              width: double.infinity,

              decoration: BoxDecoration(
                color: const Color(0xFFFFE8DC),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Center(
                child: Text(
                  emoji,
                  style: const TextStyle(
                    fontSize: 65,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            description,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            price,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE76F51),
            ),
          ),
        ],
      ),
    );
  }
}


// ============================================================
// COMBO CARD
// ============================================================

class ComboCard extends StatelessWidget {
  const ComboCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFFFFF3D6),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          const Text(
            "🍱",
            style: TextStyle(
              fontSize: 48,
            ),
          ),

          const SizedBox(width: 16),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Family Rice Combo",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Rice + Fish + Special Gravy",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "₹399",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE76F51),
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
          ),
        ],
      ),
    );
  }
}


// ============================================================
// OFFER CARD
// ============================================================

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: const Color(0xFF264653),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "SPECIAL OFFER 🎉",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Buy 2 Rice Meals\nGet a Special Gravy FREE!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Limited time offer",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          const Text(
            "🎁",
            style: TextStyle(
              fontSize: 55,
            ),
          ),
        ],
      ),
    );
  }
}


// ============================================================
// FEATURE CARD
// ============================================================

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child: Container(
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(18),

          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Icon(
              icon,
              size: 28,
              color: const Color(0xFFE76F51),
            ),

            const SizedBox(height: 12),

            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> bc83e3ecec5c1dd6f35d62dce91d628c898ce952
