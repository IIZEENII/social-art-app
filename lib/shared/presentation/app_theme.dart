import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SocialArtTheme {
  static const baseColor = Color(0xFF121216);
  static const blueGray = Color(0xFF23252F);
  static const constrast = Color(0xFF1A1B22);
  static const primaryColor = Color(0xFF2F63E8);
  static const white = Color(0xFFFFFFFF);
  static const grey = Color(0xFFA4A4A4);

  static const lightSmall = TextStyle(
    fontFamily: 'LexendDeca',
    fontSize: 12,
    fontWeight: FontWeight.w300,
    height: 1,
    color: white,
  );

  static const mediumNormal = TextStyle(
    fontFamily: 'LexendDeca',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1,
    color: white,
  );

  static const mediumBig = TextStyle(
    fontFamily: 'LexendDeca',
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: white,
  );

  static getSystemControlsTheme() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: constrast,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }
}
