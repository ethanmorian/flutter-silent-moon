import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWithText extends StatelessWidget {
  final VoidCallback onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final String buttonText;
  final double? sizedBoxHeight;
  final String? subText;
  final Color? subTextColor;

  const ButtonWithText({
    required this.onPressed,
    this.foregroundColor = const Color(0xFFF6F1FB),
    this.backgroundColor = const Color(0xFF8E97FD),
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
            child: Text(
              buttonText,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.r,
              ),
            ),
          ),
        ),
        sizedBoxHeight != null
            ? SizedBox(height: sizedBoxHeight)
            : const SizedBox(),
        subText != null
            ? Text(
                subText!,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.r,
                  color: subTextColor,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
