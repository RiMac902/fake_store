import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppButtonStyle { defaultButton, blackButton, outlinedButton, grayButton, whiteButton }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AppButtonStyle style;
  final double height;
  final double fontSize;
  final double borderRadius;
  final bool isLoading;

  const AppButton._({
    super.key,
    required this.text,
    required this.onPressed,
    required this.style,
    required this.height,
    required this.fontSize,
    required this.borderRadius,
    this.isLoading = false,
  });

  factory AppButton.main({
    Key? key,
    required String text,
    required VoidCallback? onPressed,
    AppButtonStyle style = AppButtonStyle.defaultButton,
    bool isLoading = false,
  }) {
    return AppButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      style: style,
      height: 48.h,
      fontSize: 16.sp,
      borderRadius: 6.r,
      isLoading: isLoading,
    );
  }

  factory AppButton.small({
    Key? key,
    required String text,
    required VoidCallback? onPressed,
    AppButtonStyle style = AppButtonStyle.defaultButton,
    bool isLoading = false,
  }) {
    return AppButton._(
      key: key,
      text: text,
      onPressed: onPressed,
      style: style,
      height: 36.h,
      fontSize: 14.sp,
      borderRadius: 6.r,
      isLoading: isLoading,
    );
  }

  Color _getBackgroundColor(Set<WidgetState> states) {
    switch (style) {
      case AppButtonStyle.defaultButton:
        return states.contains(WidgetState.pressed)
            ? const Color(0xFFD49F07)
            : const Color(0xFFF4D374);
      case AppButtonStyle.blackButton:
        return const Color(0xFF1F2223);
      case AppButtonStyle.outlinedButton:
        return Colors.white;
      case AppButtonStyle.grayButton:
        return const Color(0xFFF6F6F6);
      case AppButtonStyle.whiteButton:
        return Colors.white;
    }
  }

  Color _getTextColor(Set<WidgetState> states) {
    switch (style) {
      case AppButtonStyle.defaultButton:
        return states.contains(WidgetState.pressed)
            ? Colors.white
            : const Color(0xFF1F2223);
      case AppButtonStyle.blackButton:
        return Colors.white;
      case AppButtonStyle.outlinedButton:
        return states.contains(WidgetState.pressed)
            ? const Color(0xFF57595A)
            : const Color(0xFF1F2223);
      case AppButtonStyle.grayButton:
        return const Color(0xFF363939);
      case AppButtonStyle.whiteButton:
        return Colors.black;
    }
  }

  BorderSide? _getBorderSide(Set<WidgetState> states) {
    if (style != AppButtonStyle.outlinedButton) return null;

    return BorderSide(
      color: states.contains(WidgetState.pressed)
          ? const Color(0xFFD2D3D3)
          : const Color(0xFF57595A),
      width: 1.w,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          backgroundColor: WidgetStateProperty.resolveWith(_getBackgroundColor),
          foregroundColor: WidgetStateProperty.resolveWith(_getTextColor),
          side: WidgetStateProperty.resolveWith(_getBorderSide),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: height.h / 2.h),
          ),
        ),
        child: isLoading
            ? SizedBox(
                height: height * 0.5.h,
                width: height * 0.5.h,
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}
