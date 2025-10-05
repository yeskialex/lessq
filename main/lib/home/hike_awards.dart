import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

class HikeAwards extends StatelessWidget {
  const HikeAwards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF464646),
      body: SingleChildScrollView(
        child: Container(
          width: 408,
          height: 1018,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFF464646)),
          child: Stack(
            children: [
            Positioned(
              left: 22.98,
              top: 200,
              child: Container(
                width: 356,
                height: 356,
                decoration: ShapeDecoration(
                  color: const Color(0x4CDCFF00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 12,
                      top: 12,
                      child: Icon(
                        Icons.ios_share,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 22.98,
              top: 580,
              child: Container(
                width: 356,
                height: 356,
                decoration: ShapeDecoration(
                  color: const Color(0x4CDCFF00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 12,
                      top: 12,
                      child: Icon(
                        Icons.ios_share,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 124.98,
              top: 272,
              child: Container(
                width: 127,
                height: 192,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/award1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 38.98,
              top: 483,
              child: SizedBox(
                width: 326,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/leftwing.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'SPEED STAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 1.18,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      'assets/icons/rightwing.png',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 38.98,
              top: 863,
              child: SizedBox(
                width: 326,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/leftwing.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'New Record',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 1.18,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      'assets/icons/rightwing.png',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 103,
              top: 110,
              child: SizedBox(
                width: 213,
                child: Text(
                  'Mr. Kim Ha-Joon\nYou are...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w500,
                    height: 1.10,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 95,
              top: 632,
              child: Container(
                width: 197,
                height: 223,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/trophy.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 50,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 88,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: _buildNavItem(context, 0, 'Hike', Icons.hiking, true)),
              Expanded(child: _buildNavItem(context, 1, 'SOS', Icons.emergency, false)),
              Expanded(child: _buildNavItem(context, 2, 'Contacts', Icons.contacts, false)),
              Expanded(child: _buildNavItem(context, 3, 'Profile', Icons.person, false)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, int index, String label, IconData icon, bool isSelected) {
    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeBottomNavigation(currentIndex: index),
            ),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? const Color(0xFFDCFF00) : Colors.grey,
              size: 20,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? const Color(0xFFDCFF00) : Colors.grey,
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
