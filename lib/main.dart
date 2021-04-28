import 'package:flutter/material.dart';

import 'package:flutter_sandox/root.dart';
import 'package:flutter_sandox/screens/myaccount.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "/root": (BuildContext context) => RootPage(),
        "/myaccount": (BuildContext context) => MyAccount(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, String this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RootPage());
  }
}
