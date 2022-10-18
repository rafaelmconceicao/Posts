import 'package:flutter/material.dart';

class ThemeApp{
  ThemeApp._();

  static const Color primary = Color(0xFF6F977F);
  static const Color secondary = Color(0xFFF8E16C);
  static const Color neutral = Color(0xFF605C5C);
  static const Color light = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF222222);
  static const Color background = Color(0xFFF3F2F2);
  static const Color error = Color(0xFFE02F2F);

  static MaterialColor get materialThemePrimarySwatch => MaterialColor(
    primary.value,
    {
      50: primary.withOpacity(.1),
      100: primary.withOpacity(.2),
      200: primary.withOpacity(.3),
      300: primary.withOpacity(.4),
      400: primary.withOpacity(.5),
      500: primary.withOpacity(.6),
      600: primary.withOpacity(.7),
      700: primary.withOpacity(.8),
      800: primary.withOpacity(.9),
      900: primary.withOpacity(1),
    },
  );

}