import 'package:flutter/material.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';

class BotTextStyles {
  static const nameSplashScreen = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: ThemeApp.light
  );

  static const nameUser = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: ThemeApp.light
  );

  static const navBarActive = TextStyle(
    fontWeight: FontWeight.w600,
    color: ThemeApp.light,
  );

  static  TextStyle navBar = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(0.7)
  );

  static const titleNews = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static const nameUserPostCard = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: ThemeApp.black
  );

  static const datePostCard = TextStyle(
    fontSize: 13,
      color: ThemeApp.black
  );

  static const textPostCard = TextStyle(
    fontSize: 16,
  );

  static const loginTitlePage = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
  );

  static const registerTitlePage = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static const titleButtonEnabled = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ThemeApp.secondary
  );

  static const titleButtonDisabled = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ThemeApp.light
  );

  static const notHaveAccountTitle = TextStyle(
      fontSize: 13,
  );

  static const registerTitleButton = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700
  );

  static const alreadyHaveAnAccountTitle = TextStyle(
    fontSize: 13,
  );

  static const signInTitleButton = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700
  );

}
