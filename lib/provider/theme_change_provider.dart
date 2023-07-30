import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier{

  // initialize state
  var _themeMode = ThemeMode.light;
  // get the state
  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode){
    _themeMode = themeMode;
    notifyListeners();
  }




}