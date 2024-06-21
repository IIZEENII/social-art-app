import 'package:flutter/material.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/shared/presentation/icons/social_art_icons.dart';

class SocialArtAppBar extends StatelessWidget {
  const SocialArtAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: SocialArtTheme.baseColor,
      leadingWidth: 40,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: CircleAvatar(
          child: Image.asset('assets/images/launch_icon.png'),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            SocialArtIcons.search,
            color: SocialArtTheme.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            SocialArtIcons.bell,
            color: SocialArtTheme.white,
          ),
        ),
      ],
    );
  }
}
