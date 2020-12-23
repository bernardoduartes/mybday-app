import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'home_page.dart';

class MybdayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            // '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
