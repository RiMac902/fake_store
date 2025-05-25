// lib/core/components/app_text.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const AppText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  factory AppText.title(String text, {int? maxLines, TextOverflow? overflow}) {
    return AppText(
      text: text,
      fontSize: 28.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF252425),
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.title2(String text, {int? maxLines, TextOverflow? overflow}) {
    return AppText(
      text: text,
      fontSize: 30.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF1E232C),
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.title3(String text, {int? maxLines, TextOverflow? overflow}) {
    return AppText(
      text: text,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF1E232C),
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.title4(String text, {int? maxLines, TextOverflow? overflow}) {
    return AppText(
      text: text,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF1E232C),
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.subtitle(String text, {int? maxLines, TextOverflow? overflow}) {
    return AppText(
      text: text,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF252425),
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  factory AppText.subtitle2(String text, {int? maxLines, TextOverflow? overflow}) {
    return AppText(
      text: text,
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF252425).withValues(alpha: 0.5),
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}