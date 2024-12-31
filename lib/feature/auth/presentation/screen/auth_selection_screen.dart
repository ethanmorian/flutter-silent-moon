import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widget/button_with_text.dart';
import '../widget/already_have_account.dart';

class AuthSelectionScreen extends StatelessWidget {
  const AuthSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SizedBox(height: 80.h),
                _buildImage(),
                SizedBox(height: 131.31.h),
                _buildMainText(),
                SizedBox(height: 15.h),
                _buildSubText(),
                SizedBox(height: 62.h),
                _buildSignUpButton(context),
                SizedBox(height: 20.h),
                _buildAlreadyHaveAccount(context),
              ],
            ),
          )
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
    return SvgPicture.asset(
      'assets/auth_selection_logo.svg',
      width: 168.w,
      height: 30.h,
    );
  }

  Widget _buildImage() {
    return SvgPicture.asset(
      'assets/auth_selection_image.svg',
      width: 332.22.w,
      height: 242.69.h,
    );
  }

  Widget _buildMainText() {
    return Text(
      'We are what we do',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30.r,
        color: const Color(0xFF3F414E),
      ),
    );
  }

  Widget _buildSubText() {
    return Text(
      'Thousand of people are using silent moon\nfor smalls meditation',
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 16.r,
        color: const Color(0xFFA1A4B2),
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return ButtonWithText(
      onPressed: () => context.pushNamed('signUp'),
      buttonText: 'SIGN UP',
    );
  }

  Widget _buildAlreadyHaveAccount(BuildContext context) {
    return AlreadyHaveAccount(alreadyHaveAccount: true);
  }
}
