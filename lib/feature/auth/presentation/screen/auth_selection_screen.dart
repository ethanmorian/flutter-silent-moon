import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AuthSelectionScreen extends StatelessWidget {
  const AuthSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          _buildLogo(),
          _buildIllustration(),
          _buildContent(),
          _buildButtons(context),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Positioned(
      top: 0,
      child: SvgPicture.asset(
        'assets/auth_selection_background.svg',
        width: 423.w,
        height: 504.h,
      ),
    );
  }

  Widget _buildLogo() {
    return Positioned(
      top: 50.h,
      left: 0,
      right: 0,
      child: SvgPicture.asset(
        'assets/auth_selection_logo.svg',
        width: 168.w,
        height: 30.h,
      ),
    );
  }

  Widget _buildIllustration() {
    return Positioned(
      top: 160.h,
      left: 0,
      right: 0,
      child: SvgPicture.asset(
        'assets/auth_selection_image.svg',
        width: 332.22.w,
        height: 242.69.h,
      ),
    );
  }

  Widget _buildContent() {
    return Positioned(
      top: 534.h,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Text(
            'We are what we do',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.r,
              color: Color(0xFF3F414E),
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            'Thousand of people are using silent moon\nfor smalls meditation',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16.r,
              color: Color(0xFFA1A4B2),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Positioned(
      top: 705.h,
      left: 0,
      right: 0,
      child: Column(
        children: [
          TextButton(
            onPressed: () => context.pushNamed('signUp'),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color(0xFF8E97FD),
              ),
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(
                  horizontal: 156.w,
                  vertical: 25.h,
                ),
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38.r),
                ),
              ),
            ),
            child: Text(
              'SIGN UP',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.r,
                color: Color(0xFFF6F1FB),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ALREADY HAVE AN ACCOUNT? ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.r,
                  color: Color(0xFFA1A4B2),
                ),
              ),
              InkWell(
                onTap: () => context.pushNamed('signIn'),
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.r,
                    color: Color(0xFF8E97FD),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
