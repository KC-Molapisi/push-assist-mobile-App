import 'package:flutter/material.dart';

class BatteryTab extends StatefulWidget {
  @override
  _BatteryTabState createState() => _BatteryTabState();
}

class _BatteryTabState extends State<BatteryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Battery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Battery Tab'),
            SizedBox(height: 20),
            Text('Battery Level: 80%'), // Replace with actual battery level
          ],
        ),
      ),
    );
  }
}