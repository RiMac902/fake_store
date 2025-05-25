import 'package:fake_store/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? username;
  final String? pageTitle;
  final double height;
  final VoidCallback? onLogout;

  const ShopAppBar._({
    super.key,
    this.username,
    this.pageTitle,
    required this.height,
    this.onLogout,
  });

  factory ShopAppBar.main({
    Key? key,
    required String username,
    double? height,
    VoidCallback? onLogout,
  }) {
    return ShopAppBar._(
      key: key,
      username: username,
      height: height ?? 60.h,
      onLogout: onLogout,
    );
  }

  factory ShopAppBar.standard({
    Key? key,
    required String pageTitle,
    double? height,
    VoidCallback? onLogout,
  }) {
    return ShopAppBar._(
      key: key,
      pageTitle: pageTitle,
      height: height ?? 60.h,
      onLogout: onLogout,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 24.w,
      toolbarHeight: height,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (username != null) ...[
            AppText.title3('Welcome,'),
            AppText.title3(username!),
          ] else if (pageTitle != null)
            AppText.title3(pageTitle!),
        ],
      ),
      actions: [
        if (onLogout != null)
          GestureDetector(
            onTap: onLogout,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE8B2),
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/logout.svg',
                      width: 18.w,
                      height: 18.h,
                      colorFilter: const ColorFilter.mode(
                        Color(0xFF1E232C),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Text(
                    'Log out',
                    style: GoogleFonts.lato(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF3A3A3A),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
