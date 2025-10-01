import 'package:flutter/material.dart';
import 'dart:math' as math;
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

                    // Trail map with yellow border
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFF424D00),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xFFDCFF00),
                          ),
                          borderRadius: BorderRadius.circular(42),
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(7),
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
                            // Trail path visualization
                            CustomPaint(
                              size: const Size(347, 464),
                              painter: TrailPathPainter(),
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

class TrailPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Path points (simulating the trail waypoints from the image)
    final List<Offset> points = [
      Offset(size.width * 0.15, size.height * 0.88), // Start point (bottom left)
      Offset(size.width * 0.25, size.height * 0.82),
      Offset(size.width * 0.36, size.height * 0.76),
      Offset(size.width * 0.52, size.height * 0.68),
      Offset(size.width * 0.65, size.height * 0.58),
      Offset(size.width * 0.78, size.height * 0.43),
      Offset(size.width * 0.88, size.height * 0.28),
      Offset(size.width * 0.75, size.height * 0.15), // End point
    ];

    // Draw dashed path
    final pathPaint = Paint()
      ..color = Colors.white54
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < points.length - 1; i++) {
      _drawDashedLine(canvas, points[i], points[i + 1], pathPaint);
    }

    // Draw waypoint circles (black)
    final waypointPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    for (int i = 1; i < points.length - 1; i++) {
      canvas.drawCircle(points[i], 10, waypointPaint);
    }

    // Draw start point (yellow location pin)
    final startPointPaint = Paint()
      ..color = const Color(0xFFDCFF00)
      ..style = PaintingStyle.fill;

    // Yellow circle at start
    canvas.drawCircle(points[0], 14, startPointPaint);

    // Black circle on top of yellow (for pin effect)
    canvas.drawCircle(points[0], 10, waypointPaint);

    // Draw location pin icon
    final startX = points[0].dx;
    final startY = points[0].dy - 20;

    canvas.drawCircle(Offset(startX, startY), 12, startPointPaint);
    canvas.drawCircle(Offset(startX, startY), 5, waypointPaint);

    // Draw end point (black circle)
    canvas.drawCircle(points[points.length - 1], 10, waypointPaint);
  }

  void _drawDashedLine(Canvas canvas, Offset start, Offset end, Paint paint) {
    const dashWidth = 8;
    const dashSpace = 5;

    double distance = (end - start).distance;
    double dashCount = distance / (dashWidth + dashSpace);

    for (int i = 0; i < dashCount; i++) {
      double t1 = (i * (dashWidth + dashSpace)) / distance;
      double t2 = math.min(((i * (dashWidth + dashSpace)) + dashWidth) / distance, 1.0);

      Offset p1 = Offset(
        start.dx + (end.dx - start.dx) * t1,
        start.dy + (end.dy - start.dy) * t1,
      );
      Offset p2 = Offset(
        start.dx + (end.dx - start.dx) * t2,
        start.dy + (end.dy - start.dy) * t2,
      );

      canvas.drawLine(p1, p2, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
