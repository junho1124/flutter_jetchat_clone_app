import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chat_provider.dart';

class MakeChatCards extends StatelessWidget {
  const MakeChatCards({
    Key key,
    @required this.user,
  }) : super(key: key);

  final Map user;

  String timeNow () {
    String result;
    if (TimeOfDay.now().hour > 12) {
      result = (TimeOfDay.now().hour - 12).toString() + ':' + TimeOfDay.now().minute.toString() + 'PM';
    } else {
      result = TimeOfDay.now().hour.toString() + ':' + TimeOfDay.now().minute.toString() + 'AM';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0XFF1237E2), width: 2.0)
          ),
          child: Container(
            margin: EdgeInsets.all(2.0),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(user['image']),
                  fit: BoxFit.fill
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16.0, top: 4.0, right: 4.0,bottom: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(context.read<ChatProvider>().chatting.keys == user['id']
                              ? user['name']
                              : 'me',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(width: 8),
                          Text(timeNow(),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueGrey
                              )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}