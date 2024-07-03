import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/shared/infrastructure/dependency_inyector.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/shared/presentation/blocs/router_cubit.dart';

class SocialArtApp extends StatelessWidget {
  const SocialArtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<RouterCubit>()..redirectTo()),
      ],
      child: const _SocialArtContent(),
    );
  }
}

class _SocialArtContent extends StatelessWidget {
  const _SocialArtContent();

  @override
  Widget build(BuildContext context) {
    final router = context.watch<RouterCubit>();
    SocialArtTheme.getSystemControlsTheme();

    return MaterialApp.router(
      routerConfig: router.state,
      debugShowCheckedModeBanner: false,
      title: 'SocialArt',
    );
  }
}
