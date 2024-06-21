import 'package:flutter/material.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/shared/presentation/icons/social_art_icons.dart';

class SocialArtBottomNavigationBar extends StatelessWidget {
  const SocialArtBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      unselectedItemColor: SocialArtTheme.grey,
      selectedItemColor: SocialArtTheme.white,
      selectedFontSize: 12,
      backgroundColor: SocialArtTheme.constrast,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(SocialArtIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(SocialArtIcons.map),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(SocialArtIcons.post),
          label: 'Post',
        ),
        BottomNavigationBarItem(
          icon: Icon(SocialArtIcons.heart),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(SocialArtIcons.user),
          label: 'Account',
        ),
      ],
    );
  }
}
