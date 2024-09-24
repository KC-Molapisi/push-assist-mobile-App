import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Assist Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            Text(
              'Push Assist Mobile',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  BuildContext? get context => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Push Assist Mobile'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.location_on), text: 'Locate'),
              Tab(icon: Icon(Icons.battery_full), text: 'Battery'),
              Tab(icon: Icon(Icons.settings), text: 'Controls'),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: _onExitApp,
          ),
        ),
        body: TabBarView(
          children: [
            LocateTab(),
            BatteryTab(),
            ControlsTab(),
          ],
        ),
      ),
    );
  }

  void _onExitApp() {
    Navigator.pushReplacement(
      context!,
      MaterialPageRoute(builder: (context) => ExitScreen()),
    );
    Future.delayed(Duration(seconds: 2), () {
      SystemNavigator.pop();
    });
  }
}

class LocateTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Locate Tab'),
    );
  }
}

class BatteryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Battery Tab'),
    );
  }
}

class ControlsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Controls Tab'),
    );
  }
}

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