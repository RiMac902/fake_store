import 'package:fake_store/core/components/app_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 41.w + 22.w,
        toolbarHeight: 41.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: AppIconButton(
            onPressed: () => context.pop(),
          ),
        ),
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(41.h);
}