import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widget/button_with_text.dart';
import '../../../util/validator.dart';
import '../widget/app_text_field.dart';

final _formKey = GlobalKey<FormState>();

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  bool _isPasswordVisible = false;
  bool _isPrivacyAgreed = false;
  bool _isLoading = false;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          _buildBackButton(context),
          Positioned(
            top: 133.47.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  _buildMainText(),
                  SizedBox(height: 33.h),
                  _buildFacebookLoginButton(),
                  SizedBox(height: 20.h),
                  _buildGoogleLoginButton(),
                  SizedBox(height: 40.h),
                  _buildEmailLoginPrompt(),
                  SizedBox(height: 40.h),
                  _buildLoginForm(),
                  SizedBox(height: 20.h),
                  _buildPolicyCheck(context),
                  SizedBox(height: 30.h),
                  _buildSignInButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Positioned(
      right: -91.49.w,
      child: SvgPicture.asset(
        'assets/sign_background.svg',
        width: 547.19.w,
        height: 428.24.h,
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Positioned(
      top: 50.w,
      left: 20.24.w,
      child: GestureDetector(
        onTap: () => context.pop(),
        child: SvgPicture.asset(
          'assets/back_arrow.svg',
          width: 55.w,
          height: 55.h,
        ),
      ),
    );
  }

  Widget _buildMainText() {
    return Text(
      'Create your account',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28.r,
        color: const Color(0xFF3F414E),
      ),
    );
  }

  Widget _buildFacebookLoginButton() {
    return ButtonWithText(
      onPressed: () {},
      foregroundColor: const Color(0xFFF6F1FB),
      backgroundColor: const Color(0xFF7583CA),
      leading: SvgPicture.asset(
        'assets/facebook_icon.svg',
        width: 12.03.w,
        height: 24.06.h,
      ),
      buttonText: 'CONTINUE WITH FACEBOOK',
    );
  }

  Widget _buildGoogleLoginButton() {
    return ButtonWithText(
      onPressed: () {},
      foregroundColor: const Color(0xFF3F414E),
      backgroundColor: Colors.white,
      leading: SvgPicture.asset(
        'assets/google_icon.svg',
        width: 12.03.w,
        height: 24.06.h,
      ),
      buttonText: 'CONTINUE WITH GOOGLE',
    );
  }

  Widget _buildEmailLoginPrompt() {
    return Text(
      'OR SIGN UP WITH EMAIL',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14.r,
        color: const Color(0xFFA1A4B2),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextField(
            controller: _nameController,
            hintText: 'Name',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            validator: Validator.validateName,
          ),
          SizedBox(height: 20.h),
          AppTextField(
            controller: _emailController,
            hintText: 'Email address',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            validator: Validator.validateEmail,
          ),
          SizedBox(height: 20.h),
          AppTextField(
            controller: _passwordController,
            hintText: 'Password',
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            obscureText: true,
            validator: Validator.validatePassword,
          ),
        ],
      ),
    );
  }

  Widget _buildPolicyCheck(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'I have read the ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.r,
                color: const Color(0xFFA1A4B2),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.r,
                  color: const Color(0xFF8E97FD),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isPrivacyAgreed = !_isPrivacyAgreed;
                });
              },
              child: Icon(
                _isPrivacyAgreed
                    ? Icons.check_box_outlined
                    : Icons.check_box_outline_blank,
                color: const Color(0xFFA1A4B2),
                size: 24.17.w,
              ),
            ),
            SizedBox(width: 10.34.w),
          ],
        )
      ],
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return ButtonWithText(
      onPressed: () {
        if (_isPrivacyAgreed) {
          context.pop();
        }
      },
      buttonText: 'GET STARTED',
      sizedBoxHeight: 20.h,
    );
  }
}
