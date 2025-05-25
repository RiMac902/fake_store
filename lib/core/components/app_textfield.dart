import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTextFieldType {
  username,
  password,
}

class AppTextField extends StatefulWidget {
  final AppTextFieldType type;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscureText;
  final VoidCallback? onToggleObscure;

  const AppTextField({
    super.key,
    required this.type,
    this.controller,
    this.validator,
    this.onChanged,
    this.obscureText = false,
    this.onToggleObscure,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.type == AppTextFieldType.password;
  }

  String get _hintText {
    switch (widget.type) {
      case AppTextFieldType.username:
        return 'Enter your username';
      case AppTextFieldType.password:
        return 'Enter your password';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      obscureText: widget.type == AppTextFieldType.password && _obscureText,
      style: GoogleFonts.urbanist(
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF1E232C),
      ),
      decoration: InputDecoration(
        hintText: _hintText,
        hintStyle: GoogleFonts.urbanist(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF8391A1),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xFFE8ECF4),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xFFE8ECF4),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Color(0xFFE8ECF4),
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        suffixIcon: widget.type == AppTextFieldType.password
            ? Material(
                color: Colors.transparent,
                child: InkWell(
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                    widget.onToggleObscure?.call();
                  },
                  child: Padding(
                    padding: EdgeInsets.all(18.w),
                    child: SvgPicture.asset(
                      'assets/svg/obscure.svg',
                      width: 17.w,
                      height: 11.h,
                      colorFilter: ColorFilter.mode(
                        _obscureText
                            ? const Color(0xFF8391A1)
                            : const Color(0xFF1E232C),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
