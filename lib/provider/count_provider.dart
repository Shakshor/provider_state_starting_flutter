import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier{

  // count state
  int _count = 5;
  int get count => _count;


  // increment function
  void setCount (){
    _count++;
    notifyListeners();
  }



}
