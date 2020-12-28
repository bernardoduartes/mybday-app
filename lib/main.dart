import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'components/onboarding/onboarding_page.dart';
import 'home_page.dart';

main() {
  runApp(MybdayApp());
}

class MybdayApp extends StatelessWidget {
  bool get isFirstAccess {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.purple,
            fontFamily: 'Montserrat Alternates',
            textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                    fontFamily: 'Montserrat Alternates',
                    fontSize: 18,
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            ),
          ),
          initialRoute: isFirstAccess ? '/' : '/home',
          routes: {
            '/': (context) => OnboardingPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
