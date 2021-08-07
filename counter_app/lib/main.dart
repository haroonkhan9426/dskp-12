import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DSKP Counter App')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          count++;
          print('Counter value updated to: $count');
          setState(() {});
        },
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed button this many times.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '$count',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

///
/// Wigets: UI Components e.g Text, button, appbar, input field,
/// Each and everything in flutter is widget
///
/// Types:
///   1) Stateless Widget: Static, no change in run time.
///   2) Statefull widget: Dynamic, can be changes at run time.
///
///
/// Layout widgets:
///   1) Column: Vertical Alignment
///   2) Row: Horizental alignment
///
///
/// Application:
/// Screen:
/// Appbar
/// body
/// Text
/// Button
