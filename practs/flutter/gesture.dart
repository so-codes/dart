import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Navigation with Gesture Detector',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => InfoScreen(),
      },
    ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Kat 31011221077"), backgroundColor: Color(0xffff6702)),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text(
              'Kat',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onLongPress: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Image.network(
                  'https://www.pngall.com/wp-content/uploads/2016/06/Nyan-Cat-Transparent.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Long Press the image to know more',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Information of the Character"),
          backgroundColor: Color(0xffff6702)),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 170, 15, 100),
        child: Text(
            'When you love cats more than people, its often because cats have helped you through hard times when others haven,t.' +
                'Cats are often a shoulder we can cry on, a helping hand when we need emotional support,' +
                'and many times theyre our closest friends in life',
            style: TextStyle(
              fontSize: 23,
              color: Color(0xff000000),
            )),
      ),
    );
  }
}
