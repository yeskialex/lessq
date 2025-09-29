import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class SmartWatchPage extends StatefulWidget {
  const SmartWatchPage({super.key});

  @override
  State<SmartWatchPage> createState() => _SmartWatchPageState();
}

class _SmartWatchPageState extends State<SmartWatchPage> {
  Future<void> requestBluetoothPermission() async {
    try {
      // Try multiple Bluetooth-related permissions
      await [
        Permission.bluetooth,
        Permission.bluetoothScan,
        Permission.bluetoothConnect,
        Permission.bluetoothAdvertise,
      ].request();

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bluetooth permissions requested'),
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      debugPrint('Error requesting bluetooth permission: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Bluetooth permission requested'),
            backgroundColor: Colors.blue,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Title
              Text(
                'Smart Watch',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFDCFF00),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.32,
                ),
              ),

              const SizedBox(height: 40),

              // Description
              Text(
                'Allow your smart watch to access the data about health',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),

              // Spacer to push content to bottom
              const Spacer(),

              // Allow button
              GestureDetector(
                onTap: requestBluetoothPermission,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFDCFF00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    'Allow',
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

              const SizedBox(height: 24),

              // Skip for now
              Text(
                'Skip for now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}