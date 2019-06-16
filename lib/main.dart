import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            height: data.size.height / 2,
          ),
          Text(
            'Device pixel ratio ${data.devicePixelRatio}',
            style: TextStyle(fontSize: 22),
          ),
          Text(
            'Pixels we can draw over ${data.size.height * data.devicePixelRatio}',
            style: TextStyle(fontSize: 22),
          ),
          Text(
            'Orientation: ${data.orientation}',
            style: TextStyle(fontSize: 22),
          )
        ],
      ),
    );
  }
}
