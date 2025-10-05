import 'package:flutter/material.dart';
import '../login/welcome.dart';
import 'profile_awards.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 24),

              // Header with Profile title and name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Kim Ha-Joon',
                    style: TextStyle(
                      color: Color(0xFFDCFF00),
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 60),

              // Menu items
              Expanded(
                child: Column(
                  children: [
                    _buildMenuItem(context, 'Edit Profile', null),
                    const SizedBox(height: 40),
                    _buildMenuItem(context, 'Favorite Routes', null),
                    const SizedBox(height: 40),
                    _buildMenuItem(context, 'Awards', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileAwardsPage(),
                        ),
                      );
                    }),
                    const SizedBox(height: 40),
                    _buildMenuItem(context, 'Settings', null),
                    const SizedBox(height: 40),
                    _buildMenuItem(context, 'About', null),

                    const Spacer(),

                    // Logout button
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const WelcomePage()),
                          (route) => false,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 52,
                        decoration: BoxDecoration(
                          color: const Color(0xFF9E9E9E),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: const Center(
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 100), // Space for bottom navigation
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}