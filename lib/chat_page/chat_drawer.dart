import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

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
            // TODO 드로워 리스트 타일 추가.
          ],
        )
    );
  }
}
