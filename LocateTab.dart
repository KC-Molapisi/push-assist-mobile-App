import 'package:flutter/material.dart';

class LocateTab extends StatefulWidget {
  @override
  _LocateTabState createState() => _LocateTabState();
}

class _LocateTabState extends State<LocateTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locate'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Locate Tab'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Get Location'),
              onPressed: () {
                // Add logic to get the user's location here
              },
            ),
          ],
        ),
      ),
    );
  }
}