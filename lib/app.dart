import 'package:flutter/material.dart';
import 'package:socialart/shared/infrastructure/dependency_inyector.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/shared/presentation/blocs/router_cubit.dart';

class SocialArtApp extends StatelessWidget {
  const SocialArtApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routerCubit = locator<RouterCubit>();
    routerCubit.redirectTo();
    SocialArtTheme.getSystemControlsTheme();
    
    return MaterialApp.router(
      routerConfig: routerCubit.state,
      debugShowCheckedModeBanner: false,
      title: 'SocialArt',
    );
  }
}
