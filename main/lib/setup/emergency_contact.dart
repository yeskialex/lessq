import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class EmergencyContactPage extends StatefulWidget {
  const EmergencyContactPage({super.key});

  @override
  State<EmergencyContactPage> createState() => _EmergencyContactPageState();
}

class _EmergencyContactPageState extends State<EmergencyContactPage> {

  // Request contact permission
  Future<void> requestContactPermission() async {
    // First check current status
    final currentStatus = await Permission.contacts.status;
    debugPrint('Current permission status: $currentStatus');

    final status = await Permission.contacts.request();

    if (!mounted) return;

    if (status.isGranted) {
      // Permission granted - you can now access contacts
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Contact permission granted!'),
          backgroundColor: Color(0xFFDCFF00),
        ),
      );
      // Here you would typically open a contact picker
      // For now, we'll just show the success message
    } else if (status.isDenied) {
      // Permission denied
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Contact permission denied'),
          backgroundColor: Colors.red,
        ),
      );
    } else if (status.isPermanentlyDenied) {
      // Permission permanently denied, open app settings
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enable contacts in Settings'),
          backgroundColor: Colors.red,
        ),
      );
      openAppSettings();
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
                'Emergency contact',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFDCFF00),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.32,
                ),
              ),

              const SizedBox(height: 32),

              // Subtitle
              Text(
                'Select your emergency contact',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.75),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),

              // Spacer to push content to bottom
              const Spacer(),

              // Add new contact button
              GestureDetector(
                onTap: requestContactPermission,
                child: Container(
                  width: double.infinity,
                  height: 57,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF464646),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text(
                            'Add new contact?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.75),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 37.51,
                        height: 37.51,
                        margin: const EdgeInsets.only(right: 16),
                        decoration: const ShapeDecoration(
                          color: Color(0xFFDCFF00),
                          shape: OvalBorder(),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Save button
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: ShapeDecoration(
                  color: const Color(0xFF888888),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'Save',
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