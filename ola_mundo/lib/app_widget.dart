import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

import 'homepage.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appController = AppController;
    return AnimatedBuilder(
      animation: AppController.instace,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            brightness: AppController.instace.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          home: LoginPage(),
        );
      },
    );
  }
}
