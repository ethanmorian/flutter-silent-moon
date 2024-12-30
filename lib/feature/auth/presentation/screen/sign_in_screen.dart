import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

final _formKey = GlobalKey<FormState>();

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

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
          Positioned(
            right: -91.49.w,
            child: SvgPicture.asset(
              'assets/sign_background.svg',
              width: 547.19.w,
              height: 428.24.h,
            ),
          ),
          Positioned(
            top: 50.w,
            left: 20.24.w,
            child: SvgPicture.asset(
              'assets/back_arrow.svg',
              width: 55.w,
              height: 55.h,
            ),
          ),
          Positioned(
            top: 133.47.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.r,
                    color: Color(0xFF3F414E),
                  ),
                ),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.9.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xFF7583CA),
                      ),
                      fixedSize: WidgetStatePropertyAll(
                        Size(
                          374.w,
                          63.h,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 34.84.w),
                        SvgPicture.asset(
                          'assets/facebook_icon.svg',
                          width: 12.03.w,
                          height: 24.06.h,
                        ),
                        SizedBox(width: 45.78.w),
                        Text(
                          'CONTINUE WITH FACEBOOK',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.r,
                            color: Color(0xFFF6F1FB),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.white,
                      ),
                      fixedSize: WidgetStatePropertyAll(
                        Size(
                          374.w,
                          63.h,
                        ),
                      ),
                      elevation: WidgetStatePropertyAll(0),
                      side: WidgetStatePropertyAll(
                        BorderSide(
                          color: Color(0xFFEBEAEC),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 29.07.w),
                        SvgPicture.asset(
                          'assets/google_icon.svg',
                          width: 12.03.w,
                          height: 24.06.h,
                        ),
                        SizedBox(width: 40.w),
                        Text(
                          'CONTINUE WITH GOOGLE',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.r,
                            color: Color(0xFF3F414E),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  'OR LOG IN WITH EMAIL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.r,
                    color: Color(0xFFA1A4B2),
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: 'Email address',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16.r,
                              color: Color(0xFFA1A4B2),
                            ),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.r),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.transparent), // 테두리 색은 투명
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.r),
                              ),
                              borderSide: BorderSide(
                                  color:
                                      Colors.transparent), // 포커스 시에도 테두리 색은 투명
                            ),
                            filled: true,
                            fillColor: Color(0xFFF2F3F7),
                          ),
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          validator: validateEmail,
                        ),
                        SizedBox(height: 20.h),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16.r,
                              color: Color(0xFFA1A4B2),
                            ),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.r),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.transparent), // 테두리 색은 투명
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.r),
                              ),
                              borderSide: BorderSide(
                                  color:
                                      Colors.transparent), // 포커스 시에도 테두리 색은 투명
                            ),
                            filled: true,
                            fillColor: Color(0xFFF2F3F7),
                          ),
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          validator: validateEmail,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^[\w.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');

    if (!isEmailValid) {
      return 'Please enter a valid email';
    }

    return null;
  }

  String? validatePassword(String? password) {
    if (password == null) {
      return 'Please type a password';
    }

    if (password.length < 6) {
      return 'Your password should at least be 6 characters';
    }

    return null;
  }
}
