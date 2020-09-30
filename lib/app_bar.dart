import 'package:flutter/material.dart';

Widget appbar(BuildContext context, String title, dynamic otherData) {
  return AppBar(
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.blue,
            Colors.lightBlue,
          ],
        ),
      ),
    ),
    title: Text(title),
    centerTitle: true,
    leading: Icon(Icons.menu),
    actions: <Widget>[
      IconButton(
        icon: new Icon(Icons.notifications, color: Colors.white),
        onPressed: () {
          // do something
        },
      ),
    ],
  );
}
