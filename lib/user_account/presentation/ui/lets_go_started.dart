import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/shared/presentation/blocs/router_cubit.dart';

class LestGoStarted extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LestGoStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 16),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: SocialArtTheme.primaryColor,
            fixedSize: const Size(328, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: const TextStyle(color: Colors.white),
            ),
            onPressed: () {
              context.read<RouterCubit>().state.goNamed('sign-up');
            },
            child: const Text('Continue with Email'),
          ),
          const SizedBox(height: 16),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: SocialArtTheme.white,
             fixedSize: const Size(328, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              foregroundColor: Colors.black, 
            ),
            onPressed: () {
              context.read<RouterCubit>().state.goNamed('sign-up');
            },
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/google_logo.png',
                  width: 32,
                  height: 32,
                ),
                const SizedBox(width: 8),
                const Text('Continue with Google'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: SocialArtTheme.white,
            fixedSize: const Size(328, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              foregroundColor: Colors.black, 
            ),
            onPressed: () {
              context.read<RouterCubit>().state.goNamed('sign-up');
            },
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/facebook_logo.png',
                  width: 32,
                  height: 32,
                ),
                const SizedBox(width: 8),
                const Text('Continue with Facebook'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              context.read<RouterCubit>().state.goNamed('sign-up');
            },
            child: const Text(
              'Alredy have an account?  Sign In',
              textAlign: TextAlign.center,
              style: SocialArtTheme.mediumNormal,
            ),
          ),
        ],
      ),
    );
  }
}
