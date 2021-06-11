import 'package:flutter/material.dart';
import 'package:flutter_jetchat_clone_app/chat_page/chat_provider.dart';
import 'package:flutter_jetchat_clone_app/fake_data.dart';
import 'package:flutter_jetchat_clone_app/user_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ChatProvider())
  ],
  child: MyApp(),));
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





