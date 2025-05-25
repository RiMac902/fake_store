import 'package:fake_store/core/components/app_text.dart';
import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/app_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
     listener: (context, state) {
        if (state is Authenticated) {
          context.go('/home');
        } else if (state is Unauthenticated) {
          context.go('/welcome');
        } else if (state is Failure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
          context.go('/login');
        }
      },
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/welcome_background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: const Alignment(0, 0.5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/app_logo.png'),
                SizedBox(height: 17.h),
                AppText.title('Fake Store'),
                SizedBox(height: 40.h),
                SizedBox(
                  width: double.infinity,
                  child: AppButton.main(
                    text: 'Login',
                    style: AppButtonStyle.blackButton,
                    onPressed: () {
                      context.push('/sign-in');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
