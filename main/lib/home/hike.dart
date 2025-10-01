import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'hike_confirm.dart';

class HikePage extends StatefulWidget {
  const HikePage({super.key});

  @override
  State<HikePage> createState() => _HikePageState();
}

class _HikePageState extends State<HikePage> {
  int? selectedTrailIndex;

  void selectTrail(int index) {
    setState(() {
      selectedTrailIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top header with location and profile
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Seoul location button
                    Container(
                      height: 36,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFDCFF00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Seoul',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Search location button
                    Container(
                      width: 35,
                      height: 36,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFDCFF00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/hike/Search_Location.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Trail list
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Trail 1
                    _buildTrailCard(
                      index: 0,
                      title: 'Samcheonsa Trail',
                      distance: '7.33 km',
                      time: '2 hours 40 minutes',
                      difficulty: 'moderate',
                    ),

                    const SizedBox(height: 20),

                    // Trail 2
                    _buildTrailCard(
                      index: 1,
                      title: 'Baegundae – Ui Gugok Trail',
                      distance: '9.98 km',
                      time: '4 hours 20 minutes',
                      difficulty: 'advanced',
                    ),

                    const SizedBox(height: 20),

                    // Trail 3
                    _buildTrailCard(
                      index: 2,
                      title: 'Baegundae – Ui Gugok Trail',
                      distance: '6 km',
                      time: '3 hours',
                      difficulty: 'advanced',
                    ),

                    const SizedBox(height: 20),

                    // Next button (appears when trail is selected)
                    if (selectedTrailIndex != null) ...[
                      GestureDetector(
                        onTap: () {
                          // Get selected trail data
                          final trails = [
                            {
                              'title': 'Samcheonsa Trail',
                              'distance': '7.33 km',
                              'time': '2 hours 40 minutes',
                              'difficulty': 'moderate',
                            },
                            {
                              'title': 'Baegundae – Ui Gugok Trail',
                              'distance': '9.98 km',
                              'time': '4 hours 20 minutes',
                              'difficulty': 'advanced',
                            },
                            {
                              'title': 'Baegundae – Ui Gugok Trail',
                              'distance': '6 km',
                              'time': '3 hours',
                              'difficulty': 'advanced',
                            },
                          ];

                          final selectedTrail = trails[selectedTrailIndex!];

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HikeConfirmPage(
                                trailTitle: selectedTrail['title']!,
                                distance: selectedTrail['distance']!,
                                time: selectedTrail['time']!,
                                difficulty: selectedTrail['difficulty']!,
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
                            'Next',
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
                      const SizedBox(height: 20),
                    ],

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

  Widget _buildTrailCard({
    required int index,
    required String title,
    required String distance,
    required String time,
    required String difficulty,
  }) {
    final bool isSelected = selectedTrailIndex == index;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Trail title
        Text(
          title,
          style: TextStyle(
            color: isSelected ? const Color(0xFFDCFF00) : Colors.white,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        // Trail info card
        GestureDetector(
          onTap: () => selectTrail(index),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: ShapeDecoration(
              color: isSelected ? const Color(0xFFDCFF00).withValues(alpha: 0.25) : const Color(0xFF464646),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Distance
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Total travel distance: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: distance,
                        style: const TextStyle(
                          color: Color(0xFFDCFF00),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Time
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Average travel time: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: time,
                        style: const TextStyle(
                          color: Color(0xFFDCFF00),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Difficulty
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Difficulty: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: difficulty,
                        style: const TextStyle(
                          color: Color(0xFFDCFF00),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}