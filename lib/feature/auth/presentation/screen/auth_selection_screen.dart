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
          Positioned(
            top: 0,
            child: SvgPicture.asset(
              'assets/auth_selection_background.svg',
              width: 423.w,
              height: 504.h,
            ),
          ),
          Positioned(
            top: 50.h,
            left: 0.w,
            right: 0.w,
            child: SvgPicture.asset(
              'assets/auth_selection_logo.svg',
              width: 168.w,
              height: 30.h,
            ),
          ),
          Positioned(
              top: 160.h,
              left: 0.w,
              right: 0.w,
              child: SvgPicture.asset(
                'assets/auth_selection_image.svg',
                width: 332.22.w,
                height: 242.69.h,
              )),
          Positioned(
            top: 534.h,
            left: 0.w,
            right: 0.w,
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
                  'Thousand of people are usign silent moon\nfor smalls meditation',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.r,
                    color: Color(0xFFA1A4B2),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            top: 705.h,
            left: 0.w,
            right: 0.w,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    context.pushNamed('signUp');
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Color(0xFF8E97FD),
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(
                        horizontal: 156.w,
                        vertical: 25.h,
                      ),
                    ),
                    shape: WidgetStateProperty.all(
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
                InkWell(
                  onTap: () {
                    context.pushNamed('signIn');
                  },
                  child: Row(
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
                      Text(
                        'LOG IN',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.r,
                          color: Color(0xFF8E97FD),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
