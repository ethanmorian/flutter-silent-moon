import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final bool alreadyHaveAccount;

  const AlreadyHaveAccount({
    required this.alreadyHaveAccount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          alreadyHaveAccount
              ? 'ALREADY HAVE AN ACCOUNT? '
              : "DON'T HAVE AN ACCOUNT? ",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.r,
            color: const Color(0xFFA1A4B2),
          ),
        ),
        InkWell(
          onTap: () {
            final route = alreadyHaveAccount ? 'signIn' : 'signUp';
            context.pushNamed(route);
          },
          child: Text(
            alreadyHaveAccount ? 'LOG IN' : 'SIGN UP',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.r,
              color: const Color(0xFF8E97FD),
            ),
          ),
        ),
      ],
    );
  }
}
