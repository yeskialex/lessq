import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

class ProfileAwardsPage extends StatelessWidget {
  const ProfileAwardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 408,
            height: 1210,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Colors.black),
            child: Stack(
              children: [
              Positioned(
                left: 24,
                top: 74,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
              const Positioned(
                left: 0,
                right: 0,
                top: 74,
                child: Center(
                  child: Text(
                    'Awards',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 1.17,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25.81,
                top: 153.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25.81,
                top: 338.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25.81,
                top: 708.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25.81,
                top: 523.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25.81,
                top: 893.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 210.81,
                top: 153.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 210.81,
                top: 338.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 210.81,
                top: 708.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 210.81,
                top: 523.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 210.81,
                top: 893.77,
                child: Container(
                  width: 173.46,
                  height: 173.46,
                  decoration: ShapeDecoration(
                    color: const Color(0x8EC6E500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 188.37,
                child: Container(
                  width: 92,
                  height: 93,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/trophy.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 373.37,
                child: Container(
                  width: 92,
                  height: 93,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/trophy.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 743.37,
                child: Container(
                  width: 92,
                  height: 93,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/trophy.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 558.37,
                child: Container(
                  width: 92,
                  height: 93,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/trophy.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 928.37,
                child: Container(
                  width: 92,
                  height: 93,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/trophy.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 246,
                top: 738,
                child: Container(
                  width: 95,
                  height: 107,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/award1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 33.02,
                top: 281.37,
                child: SizedBox(
                  width: 159,
                  child: Text(
                    'SPEED STAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 2.11,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 33.02,
                top: 466.37,
                child: SizedBox(
                  width: 159,
                  child: Text(
                    'SPEED STAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 2.11,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 33.02,
                top: 836.37,
                child: SizedBox(
                  width: 159,
                  child: Text(
                    'SPEED STAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 2.11,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 33.02,
                top: 651.37,
                child: SizedBox(
                  width: 159,
                  child: Text(
                    'SPEED STAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 2.11,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 33.02,
                top: 1021.37,
                child: SizedBox(
                  width: 159,
                  child: Text(
                    'SPEED STAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 2.11,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 234.02,
                top: 281.37,
                child: Text(
                  'NEW RECORD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 2.11,
                  ),
                ),
              ),
              const Positioned(
                left: 234.02,
                top: 466.37,
                child: Text(
                  'NEW RECORD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 2.11,
                  ),
                ),
              ),
              const Positioned(
                left: 234.02,
                top: 836.37,
                child: Text(
                  'NEW RECORD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 2.11,
                  ),
                ),
              ),
              const Positioned(
                left: 234.02,
                top: 651.37,
                child: Text(
                  'NEW RECORD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 2.11,
                  ),
                ),
              ),
              const Positioned(
                left: 234.02,
                top: 1021.37,
                child: Text(
                  'NEW RECORD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 2.11,
                  ),
                ),
              ),
              Positioned(
                left: 246,
                top: 183,
                child: Container(
                  width: 95,
                  height: 107,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/award1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 246,
                top: 368,
                child: Container(
                  width: 95,
                  height: 107,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/award1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 246,
                top: 553,
                child: Container(
                  width: 95,
                  height: 107,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/award1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 246,
                top: 923,
                child: Container(
                  width: 95,
                  height: 107,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/award1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 408,
                  height: 44,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(),
                ),
              ),
            ],
          ),
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
              Expanded(child: _buildNavItem(context, 0, 'Hike', Icons.hiking, false)),
              Expanded(child: _buildNavItem(context, 1, 'SOS', Icons.emergency, false)),
              Expanded(child: _buildNavItem(context, 2, 'Contacts', Icons.contacts, false)),
              Expanded(child: _buildNavItem(context, 3, 'Profile', Icons.person, true)),
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
