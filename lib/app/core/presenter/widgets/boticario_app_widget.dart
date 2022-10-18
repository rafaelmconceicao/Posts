import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/features/home/presentation/pages/bottom_nav_bar.dart';
import 'package:posts/src/features/login/presentation/pages/login.dart';
import 'package:posts/src/features/news/presentation/pages/news.dart';
import 'package:posts/src/features/splash/presentation/pages/splash.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';

void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}


class BoticarioApp extends StatelessWidget {
  const BoticarioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: ThemeApp.materialThemePrimarySwatch
      ),
      home: SplashScreen(),
    );
  }
}
