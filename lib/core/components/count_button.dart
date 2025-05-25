import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountButton extends StatelessWidget {
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CountButton({
    super.key,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    final double buttonHeight = 40.h;

    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                bottomLeft: Radius.circular(10.r),
              ),
              onTap: onDecrement,
              child: Ink(
                width: buttonHeight,
                height: buttonHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: const Color(0xFF000000).withValues(alpha: 0.1),
                      width: 1.w,
                    ),
                    left: BorderSide(
                      color: const Color(0xFF000000).withValues(alpha: 0.1),
                      width: 1.w,
                    ),
                    bottom: BorderSide(
                      color: const Color(0xFF000000).withValues(alpha: 0.1),
                      width: 1.w,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    bottomLeft: Radius.circular(10.r),
                  ),
                ),
                child: Center(child: SvgPicture.asset('assets/svg/minus.svg')),
              ),
            ),
          ),
          Container(
            width: 48.w,
            height: buttonHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color(0xFF000000).withValues(alpha: 0.1),
                width: 1.w,
              ),
            ),
            child: Text(
              '$value',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF222222),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r),
              ),
              onTap: onIncrement,
              child: Ink(
                width: buttonHeight,
                height: buttonHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                   border: Border(
                    top: BorderSide(
                      color: const Color(0xFF000000).withValues(alpha: 0.1),
                      width: 1.w,
                    ),
                    right: BorderSide(
                      color: const Color(0xFF000000).withValues(alpha: 0.1),
                      width: 1.w,
                    ),
                    bottom: BorderSide(
                      color: const Color(0xFF000000).withValues(alpha: 0.1),
                      width: 1.w,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.r),
                    bottomRight: Radius.circular(10.r),
                  ),
                ),
                child: Center(child: SvgPicture.asset('assets/svg/plus.svg')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
