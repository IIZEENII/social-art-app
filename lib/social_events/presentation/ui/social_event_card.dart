import 'package:flutter/material.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/shared/presentation/icons/social_art_icons.dart';
import 'package:socialart/social_events/domain/social_event.dart';

class SocialEventCard extends StatelessWidget {
  final SocialEvent socialEvent;

  const SocialEventCard({super.key, required this.socialEvent});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      color: SocialArtTheme.constrast,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardImage(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(socialEvent.name, style: SocialArtTheme.mediumNormal),
                const SizedBox(height: 8),
                _cardLabel(
                  icon: SocialArtIcons.location,
                  text: socialEvent.location,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    _cardLabel(
                      icon: SocialArtIcons.date,
                      text: socialEvent.date,
                    ),
                    const SizedBox(width: 8),
                    _cardLabel(
                      icon: SocialArtIcons.clock,
                      text: '8:00 - 14:00',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _cardImage() {
    return Image.network(
      socialEvent.imageURL,
      width: 200,
      height: 140,
      fit: BoxFit.cover,
    );
  }

  Widget _cardLabel({
    required IconData icon,
    required String text,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: SocialArtTheme.white,
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: SocialArtTheme.lightSmall,
        )
      ],
    );
  }
}

class SocialEventCardSkeleton extends StatelessWidget {
  const SocialEventCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      color: SocialArtTheme.baseColor,
      child: SizedBox(
        width: 200,
        height: 226,
        child: Column(
          children: [
            Container(
              color: const Color(0xFF1A1B22),
              height: 140,
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 18,
                    width: 86,
                    color: const Color(0xFF1A1B22),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 18,
                    width: 144,
                    color: const Color(0xFF1A1B22),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 18,
                    width: 184,
                    color: const Color(0xFF1A1B22),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
