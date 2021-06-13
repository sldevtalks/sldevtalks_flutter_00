import 'package:flutter/material.dart';
import 'package:sldevtalks_flutter_00/pages/home.dart';
import 'package:sldevtalks_flutter_00/routes.dart';

void main() {
  runApp(SLDevTalksApp());
}

class SLDevTalksApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SLDevTalks',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "GemunuLibre",
      ),
      initialRoute: Home.routeName,
      routes: routes,
    );
  }
}
