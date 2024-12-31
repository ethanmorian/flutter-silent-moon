import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWithText extends StatelessWidget {
  final VoidCallback onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final Widget? leading;
  final String buttonText;
  final double? sizedBoxHeight;
  final String? subText;
  final Color? subTextColor;

  const ButtonWithText({
    required this.onPressed,
    this.foregroundColor = const Color(0xFFF6F1FB),
    this.backgroundColor = const Color(0xFF8E97FD),
    this.leading,
    required this.buttonText,
    this.sizedBoxHeight,
    this.subText,
    this.subTextColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 374.w,
          height: 63.h,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              foregroundColor: foregroundColor,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38.r),
              ),
              // padding: EdgeInsets.zero,
            ),
            child: Stack(
              children: [
                if (leading != null)
                  Positioned(
                    top: 0,
                    left: 20.w,
                    bottom: 0,
                    child: leading!,
                  ),
                Center(
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.r,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (sizedBoxHeight != null) SizedBox(height: sizedBoxHeight),
        if (subText != null)
          Text(
            subText!,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.r,
              color: subTextColor,
            ),
          ),
      ],
    );
  }
}
