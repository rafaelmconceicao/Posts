import 'dart:async';
import 'package:flutter/material.dart';
import 'package:posts/src/features/login/presentation/pages/login.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:posts/src/utils/helper/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (builder) => const Login()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ThemeApp.primary,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text(
            'Rafael Marques Conceição',
            style: BotTextStyles.nameSplashScreen,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
