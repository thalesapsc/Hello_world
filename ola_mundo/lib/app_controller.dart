import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instace = AppController();

  bool isDartTheme = false;
  chengeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}
