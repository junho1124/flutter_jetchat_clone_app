import 'package:flutter/material.dart';
import 'package:flutter_jetchat_clone_app/chat_page/chat_drawer.dart';
import 'buttom_app_bar.dart';

class ChatPage extends StatefulWidget {
  ChatPage(this.user);

  final Map<dynamic, dynamic> user;

  @override
  _ChatPageState createState() => _ChatPageState(user);
}

class _ChatPageState extends State<ChatPage> {
  _ChatPageState(this.user);

  final Map<dynamic, dynamic> user;

  TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: MyDrawer(),
      appBar: buildAppBar(),
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                      flex: 6,
                      child: Container()
                  ),
                  Divider(color: Colors.blueGrey,),
                  TextFormField(
                      decoration: InputDecoration(
                          focusColor: Colors.transparent,
                          hintText: '내용',
                          border: InputBorder.none
                      ),
                    controller: _controller,
                  ),
                  ChattingBar(_controller, user['id']),
                ],
              ),
            ),
          ),
        ],
      ),
    );


  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "#composers",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "8 members",
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
      elevation: 0.0,
    );
  }
}