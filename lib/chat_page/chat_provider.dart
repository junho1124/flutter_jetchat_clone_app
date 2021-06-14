import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  Map<int, Map<int, dynamic>> chatting = {};

  int chatNumber = 0;

  void nextChat() {
    chatNumber++;
  }

  bool _isTab = true;

  bool get isTab => _isTab;

  void tabbed() {
    _isTab = !_isTab;
    notifyListeners();
  }
}
