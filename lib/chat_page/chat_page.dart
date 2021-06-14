import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_jetchat_clone_app/chat_page/chat_drawer.dart';
import 'buttom_app_bar.dart';
import 'chat_appBar.dart';
import 'make_chat.dart';

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
      drawer: MyDrawer(user),
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
                      child: SingleChildScrollView(
                        child: Container(
                          height: 1000,
                          margin: EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListView(
                                  shrinkWrap: true,
                                  reverse: true,
                                  children: [
                                    MakeChatCards(user: user)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                  Divider(
                    color: Colors.blueGrey,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        focusColor: Colors.transparent,
                        hintText: 'Message #conposers',
                        border: InputBorder.none,
                        fillColor: Colors.grey,
                        hintStyle: TextStyle(fontSize: 20)),
                    controller: _controller,
                  ),
                  SizedBox(height: 8.0),
                  ChattingBar(_controller, user),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}


