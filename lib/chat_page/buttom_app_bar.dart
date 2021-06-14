import 'package:flutter/material.dart';
import 'package:flutter_jetchat_clone_app/chat_page/chat_provider.dart';
import 'package:provider/provider.dart';

class ChattingBar extends StatelessWidget {
  ChattingBar(this.controller, this.user);

  final Map<dynamic, dynamic> user;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {

    Map<int, dynamic> _chatInfo = {};

    return BottomAppBar(
      elevation: 0.0,

      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.emoji_emotions_rounded), onPressed: () {},),
          IconButton(icon: Icon(Icons.alternate_email), onPressed: () {},),
          IconButton(icon: Icon(Icons.image_outlined), onPressed: () {},),
          IconButton(icon: Icon(Icons.location_on_outlined), onPressed: () {},),
          IconButton(
            icon: Icon(Icons.photo_camera_outlined), onPressed: () {},),
          Expanded(child: SizedBox()),
          TextButton(
              onPressed: () {
                if(controller.text == '') {
                  return;
                } else {
                  _chatInfo[user['id']] = controller.text;
                  context
                      .read<ChatProvider>()
                      .chatting[context
                      .read<ChatProvider>()
                      .chatNumber] = _chatInfo;
                  context.read<ChatProvider>().nextChat();
                  controller.text = '';
                  print(context
                      .read<ChatProvider>()
                      .chatting);
                }
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0XFF1238E2),
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 8.0, right: 16, bottom: 8),
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}