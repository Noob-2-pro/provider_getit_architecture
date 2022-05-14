import 'package:flutter/material.dart';
import '../viewstate.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.idle;


  ViewState get state => _state;

  void setState(ViewState state) {
    _state = state;
    notifyListeners();
  }
}
