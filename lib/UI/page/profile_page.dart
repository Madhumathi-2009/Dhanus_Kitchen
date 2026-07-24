import 'package:flutter/material.dart';

import '../widgets/profile_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F7F4),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F7F4),
        elevation: 0,

        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const ProfileHeader(),

              const SizedBox(height: 30),

              const Text(
                'Your Activity',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              const ActivityCard(),

              const SizedBox(height: 30),

              const Text(
                'Settings',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              ProfileMenuTile(
                icon: Icons.notifications_none_rounded,
                title: 'Notifications',
                subtitle: 'Manage your notifications',
                onTap: () {},
              ),

              const SizedBox(height: 12),

              ProfileMenuTile(
                icon: Icons.favorite_border_rounded,
                title: 'Favourite Items',
                subtitle: 'View your favourite food items',
                onTap: () {},
              ),

              const SizedBox(height: 12),

              ProfileMenuTile(
                icon: Icons.feedback_outlined,
                title: 'Give Feedback',
                subtitle: 'Help us improve Dhanu\'s Budjet Menu',
                onTap: () {},
              ),

              const SizedBox(height: 12),

              ProfileMenuTile(
                icon: Icons.info_outline_rounded,
                title: 'About Us',
                subtitle: 'Learn more about our food stall',
                onTap: () {},
              ),

              const SizedBox(height: 30),

              const AppInformationCard(),
            ],
          ),
        ),
      ),
    );
  }
}
