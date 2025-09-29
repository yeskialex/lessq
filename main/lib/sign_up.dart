import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.53,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'Please enter your information to create your account',
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

              // Full Name Field
              _buildInputField(
                'Full Name*',
                'Your name',
                'assets/icons/app_icons_gray/fullname.svg',
              ),
              const SizedBox(height: 16),

              // Phone Number Field
              _buildInputField(
                'Phone number*',
                '010-1234-1234',
                'assets/icons/app_icons_gray/phonenumber.svg',
                isItalic: true,
              ),
              const SizedBox(height: 16),

              // Email Field
              _buildInputField(
                'Email adress*',
                '@email.com',
                'assets/icons/app_icons_gray/email.svg',
              ),
              const SizedBox(height: 16),

              // Age Field
              _buildInputFieldWithIcon(
                'Age*',
                'Your age',
                Icons.cake,
              ),
              const SizedBox(height: 16),

              // Gender Section
              _buildGenderSection(),
              const SizedBox(height: 16),

              // Resident Registration Number Field
              _buildInputField(
                'Resident registration number*',
                'Your number',
                'assets/icons/app_icons_gray/residentregisnumber.svg',
              ),
              const SizedBox(height: 16),

              // Height Field
              _buildInputFieldWithCustomIcon(
                'Your height',
                'Your height',
                'assets/icons/app_icons_gray/height.svg',
                iconWidth: 18,
                iconHeight: 18,
              ),
              const SizedBox(height: 16),

              // Weight Field
              _buildInputField(
                'Your weight',
                'Your weight',
                'assets/icons/app_icons_gray/weight.svg',
              ),
              const SizedBox(height: 16),

              // Blood Type Section
              _buildBloodTypeSection(),
              const SizedBox(height: 16),

              // Diseases Field
              _buildInputField(
                'Diseases',
                'eg. Cardiomyopathy',
                'assets/icons/app_icons_gray/diseases.svg',
              ),
              const SizedBox(height: 16),

              // Address Field
              _buildInputField(
                'Address',
                'eg. 32, Teheran-ro, Gangnam-gu ',
                'assets/icons/app_icons_gray/address.svg',
              ),
              const SizedBox(height: 40),

              // Continue Button
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: ShapeDecoration(
                  color: const Color(0xFF464646),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label, String placeholder, String? iconPath, {bool isItalic = false}) {
    return _buildInputFieldWithCustomIcon(label, placeholder, iconPath, isItalic: isItalic);
  }

  Widget _buildInputFieldWithIcon(String label, String placeholder, IconData iconData, {bool isItalic = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: ShapeDecoration(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 24,
                color: const Color(0xFF464646),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  placeholder,
                  style: TextStyle(
                    color: const Color(0xFF464646),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
                    height: 1.50,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInputFieldWithCustomIcon(String label, String placeholder, String? iconPath, {bool isItalic = false, double iconWidth = 24, double iconHeight = 24}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: ShapeDecoration(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(
            children: [
              iconPath != null
                  ? SvgPicture.asset(
                      iconPath,
                      width: iconWidth,
                      height: iconHeight,
                      colorFilter: const ColorFilter.mode(
                        Color(0xFF464646),
                        BlendMode.srcIn,
                      ),
                    )
                  : Container(
                      width: iconWidth,
                      height: iconHeight,
                      decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                    ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  placeholder,
                  style: TextStyle(
                    color: const Color(0xFF464646),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
                    height: 1.50,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGenderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          height: 52,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.50, color: Colors.white),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 3,
                top: 3,
                child: Container(
                  width: 180,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFDCFF00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 15,
                child: Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ),
              Positioned(
                right: 70,
                top: 15,
                child: Text(
                  'Female',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBloodTypeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Blood Type',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
        const SizedBox(height: 6),
        Column(
          children: [
            Row(
              children: [
                _buildBloodTypeButton('A+'),
                const SizedBox(width: 21),
                _buildBloodTypeButton('O+'),
                const SizedBox(width: 21),
                _buildBloodTypeButton('B+'),
                const SizedBox(width: 21),
                _buildBloodTypeButton('AB+'),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                _buildBloodTypeButton('A-'),
                const SizedBox(width: 21),
                _buildBloodTypeButton('O-'),
                const SizedBox(width: 21),
                _buildBloodTypeButton('B-'),
                const SizedBox(width: 21),
                _buildBloodTypeButton('AB-'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBloodTypeButton(String bloodType) {
    return Expanded(
      child: Container(
        height: 49,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            bloodType,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 1.33,
            ),
          ),
        ),
      ),
    );
  }
}