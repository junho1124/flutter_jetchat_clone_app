import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  Map<int, dynamic> chatting = {};

  bool _drawerCheck = true;

  void checked() {
    _drawerCheck = !_drawerCheck;
    notifyListeners();
  }

  bool get drawerCheck => _drawerCheck;

}
