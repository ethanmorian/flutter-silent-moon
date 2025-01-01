import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widget/button_with_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/'),
      child: Scaffold(
        backgroundColor: const Color(0xFF8E97FD),
        body: Stack(
          children: [
            _buildBackground(),
            Positioned(
              top: 50.h,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  _buildLogo(),
                  SizedBox(height: 75.h),
                  _buildMainText(),
                  SizedBox(height: 15.h),
                  _buildSubText(),
                  SizedBox(height: 438.h),
                  _buildStartButton(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Positioned(
      top: 357.h,
      left: 0,
      right: 0,
      child: SvgPicture.asset(
        'assets/welcome_background.svg',
        width: 492.w,
        height: 563.h,
      ),
    );
  }

  Widget _buildLogo() {
    return SvgPicture.asset(
      'assets/welcome_logo.svg',
      width: 168.w,
      height: 30.h,
    );
  }

  Widget _buildMainText() {
    TextStyle commonStyle = TextStyle(
      fontSize: 30.r,
      color: const Color(0xFFFFECCC),
      shadows: [
        Shadow(
          color: const Color(0xFFFFECCC),
          offset: Offset(0, 0),
          blurRadius: 0.3,
        ),
      ],
    );

    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Hi Afsar, Welcome\n',
              style: commonStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'to Silent Moon',
              style: commonStyle.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubText() {
    return Text(
      'Explore the app, Find some peace of mind to\nprepare for meditation.',
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 16.r,
        color: const Color(0xFFEBEAEC),
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return ButtonWithText(
      onPressed: () => context.goNamed('home'),
      foregroundColor: const Color(0xFF3F414E),
      backgroundColor: const Color(0xFFEBEAEC),
      buttonText: 'GET STARTED',
      sizedBoxHeight: 20.h,
    );
  }
}
