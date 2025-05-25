import 'package:fake_store/core/components/app_button.dart';
import 'package:fake_store/core/components/app_text.dart';
import 'package:fake_store/core/components/app_textfield.dart';
import 'package:fake_store/feature/authentication/domain/params/sign_in_params.dart';
import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:fake_store/feature/authentication/presentation/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController(text: 'johnd');
  final TextEditingController _passwordController = TextEditingController(text: "m38rmF\$");
  bool _isLoading = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    if (!_formKey.currentState!.validate()) return;
    final bloc = context.read<AuthBloc>();
    bloc.add(AuthEvent.signIn(SignInParams(
      password: _passwordController.text,
      username: _usernameController.text,
    )));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        setState(() => _isLoading = state is Loading);
        if (state is Authenticated) {
          context.go('/home');
        } else if (state is Failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message.toString()),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: const Navbar(),
        body: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.h),
                AppText.title('Welcome back! Glad to see you, Again!'),
                SizedBox(height: 32.h),
                AppTextField(
                  type: AppTextFieldType.username,
                  controller: _usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15.h),
                AppTextField(
                  type: AppTextFieldType.password,
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
                  child: AppButton.main(
                    text: 'Login',
                    style: AppButtonStyle.blackButton,
                    isLoading: _isLoading,
                    onPressed: _isLoading ? null : _handleSignIn,
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
