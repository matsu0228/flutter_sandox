import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup Name Generator', home: _MyHomePageState());
  }
}

class _MyHomePageState extends StatefulWidget {
  @override
  _MyHomePageStateState createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<_MyHomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My account'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('マイページの情報'),
                TextButton(
                    /* TODO: 戻れない */
                    onPressed: () => {Navigator.of(context).pushNamed("/root")},
                    child: Text("戻る", style: TextStyle(fontSize: 80)))
              ]),
        ));
  }
}
