import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/user_account/domain/auth_repository.dart';
import 'package:socialart/user_account/presentation/blocs/auth_cubit.dart';

class SignInForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextField(
            controller: _emailController,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email_outlined),
              prefixIconColor: Colors.white,
              hintStyle: const TextStyle(color: SocialArtTheme.grey),
              filled: true,
              fillColor: SocialArtTheme.constrast,
              hintText: 'email',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_outline),
              prefixIconColor: Colors.white,
              hintStyle: const TextStyle(color: SocialArtTheme.grey),
              filled: true,
              fillColor: SocialArtTheme.constrast,
              hintText: 'password',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: SocialArtTheme.primaryColor,
              fixedSize: const Size(328, 52),
            ),
            onPressed: () {
              context.read<AuthCubit>().signIn(
                    SignInParams(
                      email: _emailController.text,
                      password: _passwordController.text,
                    ),
                  );
            },
            child: const Text('Sign In'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Do not have an account? Sign Up',
            textAlign: TextAlign.center,
            style: SocialArtTheme.mediumNormal,
          ),
        ],
      ),
    );
  }
}
