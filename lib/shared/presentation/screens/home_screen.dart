import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialart/shared/infrastructure/dependency_inyector.dart';
import 'package:socialart/social_events/presentation/blocs/social_event_cubit.dart';
import 'package:socialart/social_events/presentation/ui/popular_social_events.dart';
import 'package:socialart/social_events/presentation/ui/social_events_near_you.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SocialEventCubit>(),
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Near You'),
                SocialEventsNearYou(),
                Text('Popular Now'),
                PopularSocialEvents(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
