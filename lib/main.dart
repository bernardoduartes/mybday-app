import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';
import 'onboarding/onboarding_page.dart';

main() {
  runApp(MybdayApp());
}

class MybdayApp extends StatelessWidget {
  bool get isFirstAccess {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Montserrat Alternates',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'Montserrat Alternates',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      initialRoute: isFirstAccess ? '/' : '/home',
      routes: {
        '/': (context) => OnboardingPage(), //LandingPage
        '/home': (context) => HomePage(),
      },
    );
  }
}
