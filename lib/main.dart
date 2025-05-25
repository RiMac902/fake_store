import 'package:fake_store/core/config/routes.dart';
import 'package:fake_store/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:fake_store/core/config/bloc_observer.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  Bloc.observer = AppBlocObserver();

  final authBloc = getIt<AuthBloc>();
  authBloc.add(const AuthEvent.started());
  runApp(
    BlocProvider<AuthBloc>(
      create: (_) => authBloc,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Fake Store',
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
    );
  }
}
