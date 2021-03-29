import 'package:flutter_application_2/game-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/navigasi.dart';
import 'package:flutter_application_2/vide-page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BelajarFlutter.com",
      initialRoute: 'BelajarNavigationDrawer',
      routes: {
        'BelajarNavigationDrawer': (context) => BelajarNavigationDrawer(),
        'GamePage': (context) => GamePage(),
        'VideoPage': (context) => VideoPage(),
      },
    );
  }
}
