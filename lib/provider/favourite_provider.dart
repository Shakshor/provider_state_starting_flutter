import 'package:flutter/foundation.dart';


class FavouriteItemProvider with ChangeNotifier{

  // state
  final List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  // create method
  void addItem(int index){

    _selectedItem.add(index);
    notifyListeners();
  }
  
  
  // remove method
  void removeItem(int index){
    
    _selectedItem.remove(index);
    notifyListeners();
  }
  



}