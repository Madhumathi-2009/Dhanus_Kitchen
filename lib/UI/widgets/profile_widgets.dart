import 'package:flutter/material.dart';

// ============================================================
// PROFILE HEADER
// ============================================================

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFE76F51), Color(0xFFF4A261)],
        ),

        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,

            decoration: BoxDecoration(
              color: Colors.white,

              shape: BoxShape.circle,

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  blurRadius: 12,
                  offset: const Offset(0, 5),
                ),
              ],
            ),

            child: const Center(
              child: Text('🍽️', style: TextStyle(fontSize: 42)),
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            "Welcome to Dhanu's Budjet Menu",
            textAlign: TextAlign.center,

            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Fresh homemade food made with love ❤️',
            textAlign: TextAlign.center,

            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// ACTIVITY CARD
// ============================================================

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ActivityItem(
            icon: Icons.restaurant_menu_rounded,
            value: '0',
            label: 'Orders',
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: ActivityItem(
            icon: Icons.favorite_rounded,
            value: '0',
            label: 'Favourites',
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: ActivityItem(
            icon: Icons.star_rounded,
            value: '0',
            label: 'Reviews',
          ),
        ),
      ],
    );
  }
}

// ============================================================
// ACTIVITY ITEM
// ============================================================

class ActivityItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const ActivityItem({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(18),

        border: Border.all(color: Colors.grey.shade200),
      ),

      child: Column(
        children: [
          Icon(icon, color: const Color(0xFFE76F51), size: 26),

          const SizedBox(height: 8),

          Text(
            value,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 3),

          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 11)),
        ],
      ),
    );
  }
}

// ============================================================
// PROFILE MENU TILE
// ============================================================

class ProfileMenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const ProfileMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      borderRadius: BorderRadius.circular(18),

      child: Container(
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(18),

          border: Border.all(color: Colors.grey.shade200),
        ),

        child: Row(
          children: [
            Container(
              height: 48,
              width: 48,

              decoration: BoxDecoration(
                color: const Color(0xFFFFE8DC),
                borderRadius: BorderRadius.circular(14),
              ),

              child: Icon(icon, color: const Color(0xFFE76F51), size: 24),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// APP INFORMATION CARD
// ============================================================

class AppInformationCard extends StatelessWidget {
  const AppInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            "Dhanu's Budjet Menu",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),

          const SizedBox(height: 6),

          const Text(
            'Version 1.0.0',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),

          const SizedBox(height: 6),

          Text(
            'Made with ❤️ for food lovers',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }
}
