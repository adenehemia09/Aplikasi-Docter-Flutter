import 'package:flutter/foundation.dart';

class TukarIndex with ChangeNotifier{
  int _indexs = 0;

  int get index  => _indexs;
  set index(int value) {
    _indexs = value;
    notifyListeners();
  }

  void _onItemTapped(int index) {
    set() {
      _indexs = index;
    };
  }

  int get indexku => _indexs;
}