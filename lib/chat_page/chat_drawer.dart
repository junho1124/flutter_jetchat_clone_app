import 'package:flutter/material.dart';
import 'package:flutter_jetchat_clone_app/chat_page/chat_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
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
                      child: Image(image: AssetImage('assets/jetchat_logo-removebg-preview.png'),)),
                ),
                Expanded(
                  flex: 3,
                    child: SizedBox(width: 50,))
              ],
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: context.read<ChatProvider>().drawerCheck
                    ? Color(0XFFDAE1F6)
                    : Colors.transparent,
              ),
              child: ListTile(
                onTap: () {
                    context.read<ChatProvider>().checked();
                },
                leading: Icon(Icons.chat,
                color: context.read<ChatProvider>().drawerCheck ? Color(0XFF1237E2) : Colors.black,
                size: 32,),
                title: Text('Conversations',
                  style: TextStyle(
                    fontSize: 16,
                    color: context.read<ChatProvider>().drawerCheck ? Color(0XFF1237E2) : Colors.black,
                  ),
                    ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: context.read<ChatProvider>().drawerCheck
                    ? Colors.transparent
                    : Color(0XFFDAE1F6),
              ),
              child: ListTile(
                onTap: () {
                  context.read<ChatProvider>().checked();
                },
                leading: Icon(Icons.person_rounded,
                color: context.read<ChatProvider>().drawerCheck ? Colors.black : Color(0XFF1237E2),
                size: 32,),
                title: Text('Profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: context.read<ChatProvider>().drawerCheck ? Colors.black: Color(0XFF1237E2) ,
                  ),
                    ),
              ),
            )
          ],
        )
    );
  }
}
