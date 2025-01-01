import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_silent_moon/core/widget/button_with_text.dart';
import 'package:flutter_silent_moon/feature/auth/presentation/widget/app_text_field.dart';
import 'package:flutter_silent_moon/feature/util/validator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../widget/already_have_account.dart';

final _formKey = GlobalKey<FormState>();

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  bool _isPasswordVisible = false;
  bool isLoading = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
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
                SizedBox(height: 40.h),
                _buildSignInButton(context),
                SizedBox(height: 104.58.h),
                _buildAlreadyHaveAccount(context),
              ],
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
      'Welcome Back!',
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
      'OR LOG IN WITH EMAIL',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14.r,
        color: const Color(0xFFA1A4B2),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
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
      ),
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return ButtonWithText(
      onPressed: () => context.goNamed('welcome'),
      buttonText: 'LOG IN',
      sizedBoxHeight: 20.h,
      subText: 'Forgot Password?',
      subTextColor: Color(0xFF3F414E),
    );
  }

  Widget _buildAlreadyHaveAccount(BuildContext context) {
    return AlreadyHaveAccount(alreadyHaveAccount: false);
  }
}
