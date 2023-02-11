import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        title: "Animation",
        // home: AnimatedContainerPage(),
        initialRoute: '/',
        routes: {
          '/': (context) => AnimatedContainerPage(),
          '/pog': (context) => Pog(),
        }));

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.blue;
  Color _btnColor = Colors.white;
  double _btnWidth = 0;
  double _btnHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
            width: _width,
            height: _height,
            color: _color,
            duration: Duration(milliseconds: 250),
          ),
          ElevatedButton(
            child: Text(''),
            onPressed: () {
              Navigator.pushNamed(context, '/pog');
            },
            style: ElevatedButton.styleFrom(
                primary: _btnColor,
                padding: EdgeInsets.symmetric(
                    horizontal: _btnWidth, vertical: _btnHeight),
                textStyle: TextStyle(fontSize: 0, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _update,
        backgroundColor: Colors.black,
      ),
    );
  }

  void _update() {
    setState(() {
      if (_color == Colors.blue) {
        _width = 300;
        _height = 300;
        _color = Colors.green;
        _btnColor = Colors.black;

        _btnHeight = 30;
        _btnWidth = 100;
        curve:
        Curves.easeInOutCubic;
      } else {
        _width = 200;
        _height = 200;
        _color = Colors.blue;
        _btnColor = Colors.white;

        _btnHeight = 0;
        _btnWidth = 0;
        curve:
        Curves.easeOutCubic;
      }
    });
  }
}

class Pog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Poggers")),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text("Home"))));
  }
}
