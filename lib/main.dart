import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final routes = <String,WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) =>HomePage()
  };

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Login Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito'
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}