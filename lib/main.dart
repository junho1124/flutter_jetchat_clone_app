import 'package:flutter/material.dart';
import 'package:flutter_jetchat_clone_app/fake_data.dart';
import 'package:flutter_jetchat_clone_app/user_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  FakeData _fakeData = FakeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.black)
      ),
      home: UserPage(_fakeData.users),
    );
  }
}





