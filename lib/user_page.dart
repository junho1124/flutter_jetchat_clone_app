import 'package:flutter/material.dart';
import 'chat_page/chat_page.dart';

class UserPage extends StatelessWidget {
  UserPage(this.users);

  final List<Map> users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 500,
            child: Center(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: users.map((e) => MakeUsers(e)).toList()
              ),
            ),
          ),
        ));
  }
}

class MakeUsers extends StatelessWidget {
  MakeUsers(this.user);

  final Map<dynamic, dynamic> user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${user['name']}'),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ChatPage(user)));
      },
    );
  }
}
