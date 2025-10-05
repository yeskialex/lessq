import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'hike_active.dart';

class HikeConfirmPage extends StatelessWidget {
  final String trailTitle;
  final String distance;
  final String time;
  final String difficulty;

  const HikeConfirmPage({
    super.key,
    required this.trailTitle,
    required this.distance,
    required this.time,
    required this.difficulty,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),

                    // Greeting text
                    const Text(
                      'Kim Ha-Joon,\nare you ready to start the hike?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 1.41,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Large title
                    const Text(
                      'Let\'s start the hike!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFDCFF00),
                        fontSize: 34,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 1.32,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Trail map
                    Container(
                      width: double.infinity,
                      height: 464,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF464646),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37),
                        ),
                      ),
                        child: Stack(
                          children: [
                            // Trail map SVG
                            ClipRRect(
                              borderRadius: BorderRadius.circular(37),
                              child: SvgPicture.asset(
                                'assets/images/map.svg',
                                width: double.infinity,
                                height: 464,
                                fit: BoxFit.cover,
                              ),
                            ),

                            // Download button (bottom right)
                            Positioned(
                              right: 16,
                              bottom: 16,
                              child: Container(
                                width: 46,
                                height: 46,
                                decoration: const ShapeDecoration(
                                  color: Colors.black,
                                  shape: OvalBorder(),
                                ),
                                child: const Icon(
                                  Icons.download,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),

            // Bottom Start button
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HikeActivePage(
                        trailTitle: trailTitle,
                        totalDistance: distance,
                        estimatedTime: time,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFDCFF00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Start',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
