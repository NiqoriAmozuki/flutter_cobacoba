import 'package:flutter/material.dart';
import 'package:flutter_application_2/nav-drawer.dart';

class BelajarNavigationDrawer extends StatefulWidget {
  @override
  _BelajarNavigationDrawerState createState() =>
      _BelajarNavigationDrawerState();
}

class _BelajarNavigationDrawerState extends State<BelajarNavigationDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.account_circle),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Text("Biodata"),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: new Icon(Icons.account_box, color: Colors.white),
              onPressed: () => _scaffoldKey.currentState.openEndDrawer()),
        ],
      ),
      drawer: DrawerWidget(),
      endDrawer: null,
      body: Center(
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam condimentum ultrices felis. Maecenas ut nisl ante. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque venenatis consequat neque. Aliquam feugiat molestie nibh, sed faucibus odio congue interdum. In feugiat magna at ex ullamcorper viverra. Sed malesuada id nulla quis sagittis. Integer eu ornare nulla.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
