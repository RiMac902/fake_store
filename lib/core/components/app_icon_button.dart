import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AppIconButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 41.w,
        height: 41.w,
        child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: BorderSide(
              color: Color(0xFFE8ECF4),
              width: 1.w,
            ),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12.r),
            onTap: onPressed,
            child: Center(
              child: SvgPicture.asset(
                'assets/svg/arrow.svg',
                width: 8.w,
                height: 14.h,
                fit: BoxFit.contain,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF1E232C),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
