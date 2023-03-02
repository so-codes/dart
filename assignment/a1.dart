// Create a basic screen in flutter which will display a welcome message and will have 2 buttons for the light and dark mode.Clicking on those 2 buttons will change the theme
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: MyHomePage(),
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme in flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Flutter',
            ),
            SizedBox(height: 20),
            Text(
              'Click the buttons below to change the theme',
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => MyApp.of(context).changeTheme(ThemeMode.light),
            tooltip: 'Light',
            child: Icon(Icons.wb_sunny),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => MyApp.of(context).changeTheme(ThemeMode.dark),
            tooltip: 'Dark',
            child: Icon(Icons.nights_stay),
          ),
        ],
      ),
    );
  }
}
