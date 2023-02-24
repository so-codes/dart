import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Welcome ',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    // Text(
    //   'Cart ',
    //   style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    // ),
    Card(
        color: Colors.white,
        child: Center(
            child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                children: [
              Card(
                color: Colors.teal,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.home, size: 50),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Item 1',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                        //onPrimary: Colors.black,
                      ),
                    ),
                    Text('',
                        style: TextStyle(
                          fontSize: 3,
                        ))
                  ],
                )),
              ),
              Card(
                color: Colors.teal,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.home, size: 50),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Item 2',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                        //onPrimary: Colors.black,
                      ),
                    ),
                    Text('',
                        style: TextStyle(
                          fontSize: 3,
                        ))
                  ],
                )),
              ),
            ]))),
    Card(
        color: Colors.white,
        child: Center(
            child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                children: [
              Card(
                color: Colors.teal,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.add, size: 50),
                    ),
                    Text('Item1',
                        style: TextStyle(
                          fontSize: 30,
                        ))
                  ],
                )),
              ),
              Card(
                color: Colors.teal,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.add, size: 50),
                    ),
                    Text('Item2',
                        style: TextStyle(
                          fontSize: 30,
                        ))
                  ],
                )),
              ),
            ]))),
    Text('Profile Page\nitz Kurizu',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Logout!',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Shopping App'), backgroundColor: Colors.blue),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: "Cart",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee_sharp),
                label: "Payment",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: "Logout",
              backgroundColor: Color(0xfffd0000),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
