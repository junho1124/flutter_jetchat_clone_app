import 'package:flutter/material.dart';
import 'package:flutter_jetchat_clone_app/chat_page/chat_drawer.dart';
class MyProfilePage extends StatelessWidget {
  MyProfilePage(this.user);

  Map<dynamic, dynamic> user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(user),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        backwardsCompatibility: false,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert_sharp),
        )],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.network('https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fdam%2Fimageserve%2F1156207481%2F960x0.jpg%3Ffit%3Dscale',
            fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user['name'],
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      )),
                    Text(user['exp'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: Colors.grey
                      )),
                    Text(user['position'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: Colors.grey
                      )),
                    SizedBox(height: 14),
                    Divider(color: Colors.grey,),
                    Text('Display name',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14,
                      height: 2,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(user['dpName'],
                    style: TextStyle(
                      fontSize: 18,
                      height: 2
                    ),),
                    SizedBox(height: 12),
                    Divider(color: Colors.grey,),
                    Text('Status',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14,
                      height: 2,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(user['status'] ? 'Online' : 'Offline',
                    style: TextStyle(
                      fontSize: 18,
                      height: 2
                    ),),
                    SizedBox(height: 12),
                    Divider(color: Colors.grey,),
                    Text('Twitter',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14,
                      height: 2,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(user['twitter'],
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                      height: 2
                    ),),
                    SizedBox(height: 12),
                    Divider(color: Colors.grey,),
                    Text('Timezone',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14,
                      height: 2,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(user['timeZone'],
                    style: TextStyle(
                      fontSize: 18,
                      height: 2
                    ),),
                  ],
                )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFF1237E2),
        child: Icon(Icons.create_outlined, size: 35,),
        onPressed: () {  },),
    );
  }
}
