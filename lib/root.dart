import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

import 'dart:io';

class RootPage extends StatefulWidget {
  @override
  _RootPageStateState createState() => _RootPageStateState();
}

class _RootPageStateState extends State<RootPage> {
  int _counter = 0;
  String _type = "偶数";

  // OS名を取得、自分でごりごりやりたいならこちら
  String _os = Platform.operatingSystem;
  String _osVer = Platform.operatingSystemVersion;
  String _localName = Platform.localeName;
  // OSごとで判定するプロパティも提供されている
  // bool isAndroid = Platform.isAndroid;
  //
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = "偶数";
      } else {
        _type = "奇数";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: Center(
        child: WatchShape(builder: (context, shape, child) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Shape: ${shape == WearShape.round ? 'round' : 'square'}',
                ),
                TextButton(
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/myaccount")},
                    child: Text("進む", style: TextStyle(fontSize: 10))),
                Text(
                  'OS: $_os, \nVer:$_osVer, \nlocal:$_localName',
                ),
                TextButton(
                  onPressed: () => {print("ボタンがおされたよ")},
                  child: Text("log出力ボタン"),
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text('$_type',
                    style: TextStyle(fontSize: 20, color: Colors.red))
              ]);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
