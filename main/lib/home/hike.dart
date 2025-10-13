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
  bool isFilterMenuOpen = false;

  void selectTrail(int index) {
    setState(() {
      selectedTrailIndex = index;
    });
  }

  void toggleFilterMenu() {
    setState(() {
      isFilterMenuOpen = !isFilterMenuOpen;
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    // Hamburger menu button or Filter options
                    GestureDetector(
                      onTap: toggleFilterMenu,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        child: isFilterMenuOpen
                            ? Container(
                                key: const ValueKey('filter_menu'),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFDCFF00),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black, width: 2),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        const Text(
                                          'By Name',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black, width: 2),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        const Text(
                                          'By Difficulty',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(
                                key: const ValueKey('hamburger'),
                                width: 35,
                                height: 36,
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/icons/hamburger.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
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
                      distance: '5.1 km',
                      time: '2 hours 10 minutes',
                      difficulty: 'moderate',
                    ),

                    const SizedBox(height: 20),

                    // Trail 3
                    _buildTrailCard(
                      index: 2,
                      title: 'Cheonwangbong Peak Trail (Jirisan)',
                      distance: '10.4 km',
                      time: '5 hours 20 minutes',
                      difficulty: 'advanced',
                    ),

                    const SizedBox(height: 20),

                    // Trail 4
                    _buildTrailCard(
                      index: 3,
                      title: 'Hallasan Seongpanak Trail (Jeju island)',
                      distance: '9.6 km',
                      time: '4 hours 30 minutes',
                      difficulty: 'advanced',
                    ),

                    const SizedBox(height: 20),

                    // Trail 5
                    _buildTrailCard(
                      index: 4,
                      title: 'Namsan Circular Trail (Seoul)',
                      distance: '7.2 km',
                      time: '2 hours',
                      difficulty: 'easy',
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
                              'distance': '5.1 km',
                              'time': '2 hours 10 minutes',
                              'difficulty': 'moderate',
                            },
                            {
                              'title': 'Cheonwangbong Peak Trail (Jirisan)',
                              'distance': '10.4 km',
                              'time': '5 hours 20 minutes',
                              'difficulty': 'advanced',
                            },
                            {
                              'title': 'Hallasan Seongpanak Trail (Jeju island)',
                              'distance': '9.6 km',
                              'time': '4 hours 30 minutes',
                              'difficulty': 'advanced',
                            },
                            {
                              'title': 'Namsan Circular Trail (Seoul)',
                              'distance': '7.2 km',
                              'time': '2 hours',
                              'difficulty': 'easy',
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