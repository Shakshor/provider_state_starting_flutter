import 'package:flutter/foundation.dart';

class ExampleOneProvider  with ChangeNotifier {

  double _value = 1.0;
  // get the value
  double get value => _value;


  // set the onChange value of slider
  void setValue(double newValue){

    _value = newValue;
    notifyListeners();

  }

}
