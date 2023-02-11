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
        title: Text("Shoe Info"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text(
              'LiteRide Crocs',
              style: TextStyle(
                  color: Color(0xFF055052),
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(55, 30, 55, 10),
            child: GestureDetector(
              onLongPress: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Image.network(
                  'https://i.pinimg.com/originals/7e/4e/a5/7e4ea5aa941d69c2beab520613614b1b.jpg'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(55, 5, 55, 10),
            child: Text(
              'Long Press the image to know more info about the shoes',
              style: TextStyle(
                  color: Color(0xFF055052),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(1),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue)),
                    onPressed: () {
                      print("Added to cart");
                    },
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                ],
              )),
        ],
      ),
      backgroundColor: Color(0xffffdd72),
    );
  }
}

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoe Details"),
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 10),
          child: Column(
            children: [
              Text(
                  'LiteRide is a revolutionary closed-cell material\n\n' +
                      'Crocs has created to enhance its comfort options by offering consumers new shoes that “mix support and sink-in softness.\n\n' +
                      'The LiteRide foam is 40 percent softer and 25 percent lighter than the Classic Croslite foam.',
                  style: TextStyle(
                    fontSize: 23,
                    color: Color(0xFF5F1A2F),
                  )),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('Go Back'),
              ),
            ],
          )),
      backgroundColor: Color(0xffffdd72),
    );
  }
}
