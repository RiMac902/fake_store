import 'package:fake_store/core/utils/go_router_refresh_stream.dart';
import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:fake_store/feature/authentication/presentation/pages/sign_in_page.dart';
import 'package:fake_store/feature/authentication/presentation/pages/welcome_page.dart' ;
import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';
import 'package:fake_store/feature/shop/presentation/pages/cart_page.dart';
import 'package:fake_store/feature/shop/presentation/pages/home_page.dart';
import 'package:fake_store/feature/shop/presentation/pages/product_page.dart';
import 'package:fake_store/feature/shop/presentation/pages/wishlist_page.dart';
import 'package:fake_store/feature/shop/presentation/widgets/app_scaffold.dart';
import 'package:fake_store/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/welcome',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(path: '/welcome', builder: (context, state) => const WelcomePage()),
    GoRoute(path: '/sign-in', builder: (context, state) => const SignInPage()),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return AppScaffold(child: child);
      },
      routes: [
        GoRoute(path: '/home', builder: (context, state) => const HomePage()),
        GoRoute(
          path: '/wishlist',
          builder: (context, state) => const WishlistPage(),
        ),
        GoRoute(path: '/cart', builder: (context, state) => const CartPage()),
      ],
    ),
    GoRoute(
      path: '/product/:id',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        return BlocProvider.value(
          value: getIt<ShopBloc>(),
          child: ProductPage(
            id: state.pathParameters['id']!,
            title: extra['title'] as String,
            price: extra['price'] as String,
            image: extra['image'] as String,
            category: extra['category'] as String,
            rating: extra['rating'] as String,
            reviews: extra['reviews'] as int,
          ),
        );
      },
    ),
  ],
  refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
  redirect: (context, state) {
    final authState = getIt<AuthBloc>().state;
    final currentLocation = state.matchedLocation;

    if (authState is Authenticated) {
      if (currentLocation == '/welcome' || currentLocation == '/sign-in') {
        return '/home';
      }
      return null;
    }

    if (authState is Unauthenticated) {
      if (currentLocation != '/welcome' && currentLocation != '/sign-in') {
        return '/welcome';
      }
    }

    return null;
  },
);

