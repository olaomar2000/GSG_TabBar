import 'package:flutter/material.dart';
import 'package:gsg_tabbar/ui/fav_page.dart';
import 'package:gsg_tabbar/ui/home_page.dart';
import 'package:gsg_tabbar/ui/profile_page.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp()));
}

class MyApp extends StatefulWidget {
 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
            )
          ],
        ),
        body: TabBarView(children: [
          Center(
            child: home(),
          ),
          Center(
            child: fav()
            ),
          Center(
            child: profile(),
          ),
        ]),
      ),
    );
  }
}

