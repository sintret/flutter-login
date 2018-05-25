import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final aurora = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/aurora.jpg'),
        ),
      ),
    );

    final title = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Welcome Aurora',
          style: TextStyle(fontSize: 28.0, color: Colors.white)),
    );

    final description = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
          'Please anytime you are programming can you show us the hot reload because some of us are just beginners  and we won\'t understand what you are doing﻿',
          style: TextStyle(fontSize: 22.0, color: Colors.white)),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(26.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blueAccent])),
      child: Column(
        children: <Widget>[aurora, title, description],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
