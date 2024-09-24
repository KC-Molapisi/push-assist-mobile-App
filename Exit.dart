import 'package:flutter/material.dart';

class ExitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Exiting Push Assist Mobile',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(
              'Thank you for using Push Assist Mobile!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}