import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/shared/infrastructure/dependency_inyector.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/user_account/presentation/blocs/auth_cubit.dart';
import 'package:socialart/user_account/presentation/ui/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<AuthCubit>(),
      child: Scaffold(
        backgroundColor: SocialArtTheme.baseColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.vertical,
              children: [
                Image.asset(
                  'assets/images/launch_icon.png',
                  width: 80,
                  height: 80,
                ),
                const Text(
                  'SocialArt',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),
                SignInForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
