import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  double custFontSize = 20;
  int custFontcolorIndex = 0;
  Color customFontColor = Colors.black;
  var i = 0;

  List c = [
    Colors.red,
    Colors.amber,
    Colors.lightBlue,
    Colors.green,
    Colors.deepPurple,
    Colors.orange,
    Colors.grey,
    Colors.pink
  ];
  void changeFontColor() async {
    if (i == (c.length - 1)) {
      setState(() {
        i = 0;
      });
    } else {
      setState(() {
        i += 1;
      });
    }
    setState(() {
      customFontColor = c[i];
    });
  }

  void changeFontSize() async {
    setState(() {
      custFontSize += 2;
      print(custFontSize);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gaurav Kanojia 1st experiment'),
        backgroundColor: Colors.red[400],
        centerTitle: true,
      ),
      body: Center(
          child: Column(children: <Widget>[
            Text(
              'Hello World',
              style: TextStyle(fontSize: custFontSize, color: customFontColor),
            ),
            RaisedButton(
              onPressed: () {
                changeFontSize();
              },
              child: Text('Change size'),
            ),
            RaisedButton(
              onPressed: () {
                changeFontColor();
              },
              child: Text('Change color'),
            ),
          ])),
    );
  }
}