import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controller = TextEditingController();
  String _result = "Enter a number";

  void _calculate() {
    setState(() {
      double _number = double.parse(_controller.text);
      _result = "${_number / 100} m";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convert cm to m"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter a number"),
              controller: _controller,
            ),
            ElevatedButton(
              child: Text("Convert"),
              onPressed: _calculate,
            ),
            Text(_result),
          ],
        ),
      ),
    );
  }
}
