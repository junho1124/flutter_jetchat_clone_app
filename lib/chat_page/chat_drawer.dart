import 'package:flutter/material.dart';
import 'package:flutter_jetchat_clone_app/chat_page/chat_provider.dart';
import 'package:flutter_jetchat_clone_app/fake_data.dart';
import 'package:flutter_jetchat_clone_app/profile_page/profile_page.dart';
import 'package:flutter_jetchat_clone_app/user_page.dart';
import 'package:provider/provider.dart';
import 'chat_page.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer(this.user);

  Map<dynamic, dynamic> user;

  @override
  _MyDrawerState createState() => _MyDrawerState(user);
}

class _MyDrawerState extends State<MyDrawer> {
  _MyDrawerState(this.user);

  Map<dynamic, dynamic> user;

  @override
  Widget build(BuildContext context) {

    FakeData _fakeData = FakeData();

    bool _checked = context.read<ChatProvider>().isTab;

    return Drawer(
        child: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              child: DrawerHeader(
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0),
                  child: Image(
                    image:
                        AssetImage('assets/jetchat_logo-removebg-preview.png'),
                  )),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            UserPage(_fakeData.users)));
              },
              icon: Icon(Icons.logout),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: _checked ? Color(0XFFDAE1F6) : Colors.transparent,
          ),
          child: ListTile(
            onTap: () {
              setState(() {
                context.read<ChatProvider>().tabbed();
              });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ChatPage(user)));
            },
            leading: Icon(
              Icons.chat,
              color: _checked ? Color(0XFF1237E2) : Colors.black,
              size: 32,
            ),
            title: Text(
              'Conversations',
              style: TextStyle(
                fontSize: 16,
                color: _checked ? Color(0XFF1237E2) : Colors.black,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: _checked ? Colors.transparent : Color(0XFFDAE1F6),
          ),
          child: ListTile(
            onTap: () {
              setState(() {
                context.read<ChatProvider>().tabbed();
              });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MyProfilePage(user)));
            },
            leading: Icon(
              Icons.person_rounded,
              color: _checked ? Colors.black : Color(0XFF1237E2),
              size: 32,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 16,
                color: _checked ? Colors.black : Color(0XFF1237E2),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
