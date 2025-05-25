import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';
import 'package:fake_store/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppScaffold extends StatefulWidget {
  final Widget child;

  const AppScaffold({super.key, required this.child});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int _getCurrentIndex(String path) {
    if (path.startsWith('/home')) return 0;
    if (path.startsWith('/wishlist')) return 1;
    if (path.startsWith('/cart')) return 2;
    return 0;
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    return _getCurrentIndex(location);
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/wishlist');
        break;
      case 2:
        context.go('/cart');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ShopBloc>(),
      child: Scaffold(
        body: widget.child,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xFFE8ECF4), width: 1)),
          ),
          child: BottomNavigationBar(
            currentIndex: _calculateSelectedIndex(context),
            onTap: (int idx) => _onItemTapped(idx, context),
            elevation: 0,
            backgroundColor: Colors.white,
            selectedItemColor: const Color(0xFF1E232C),
            unselectedItemColor: const Color(0xFF8391A1),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/home.svg',
                  width: 20.w,
                  height: 20.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF8391A1),
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/svg/home.svg',
                  width: 20.w,
                  height: 20.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF1E232C),
                    BlendMode.srcIn,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/heart.svg',
                  width: 20.w,
                  height: 20.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF8391A1),
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/svg/heart.svg',
                  width: 20.w,
                  height: 20.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF1E232C),
                    BlendMode.srcIn,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/cart.svg',
                  width: 20.w,
                  height: 20.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF8391A1),
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/svg/cart.svg',
                  width: 20.w,
                  height: 20.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF1E232C),
                    BlendMode.srcIn,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
