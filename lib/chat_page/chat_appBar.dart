import 'package:flutter/material.dart';
import '../fake_data.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: Column(
      children: [
        Text(
          "#composers",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          '${FakeData().users.length} members',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ],
    ),
    backgroundColor: Color.fromRGBO(255, 255, 255, 0.99),
    elevation: 0.5,

  );
}