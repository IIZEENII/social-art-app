import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/shared/infrastructure/dependency_inyector.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/shared/presentation/ui/social_art_app_bar.dart';
import 'package:socialart/shared/presentation/ui/social_art_bottom_navigation_bar.dart';
import 'package:socialart/social_events/presentation/blocs/social_event_cubit.dart';
import 'package:socialart/social_events/presentation/ui/popular_social_events.dart';
import 'package:socialart/social_events/presentation/ui/social_events_near_you.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SocialEventCubit>(),
      child: Scaffold(
        backgroundColor: SocialArtTheme.baseColor,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: SocialArtAppBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              Text(
                'Near You',
                style: SocialArtTheme.mediumBig,
              ),
              SocialEventsNearYou(),
              SizedBox(height: 24),
              Text(
                'Popular Now',
                style: SocialArtTheme.mediumBig,
              ),
              PopularSocialEvents(),
              SizedBox(height: 24),
              Text(
                'Recently viewed',
                style: SocialArtTheme.mediumBig,
              ),
              PopularSocialEvents(),
            ],
          ),
        ),
        bottomNavigationBar: const SocialArtBottomNavigationBar(),
      ),
    );
  }
}
