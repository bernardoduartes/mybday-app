import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'pages/onboarding/onboarding_page.dart';

class MybdayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => OnboardingPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
