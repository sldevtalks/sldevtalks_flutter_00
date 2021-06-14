import 'package:flutter/material.dart';
import 'package:sldevtalks_flutter_00/pages/home.dart';
import 'package:sldevtalks_flutter_00/routes.dart';
import 'package:sldevtalks_flutter_00/theme.dart';

void main() {
  runApp(SLDevTalksApp());
}

class SLDevTalksApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _SLDevTalksAppState createState() => _SLDevTalksAppState();
}

class _SLDevTalksAppState extends State<SLDevTalksApp> {
  bool isDark = false;

  void toggleDarkMode(bool newState) {
    setState(() {
      isDark = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SLDevTalks',
      theme: DevTalkTheme.lightTheme,
      darkTheme: DevTalkTheme.darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      // initialRoute: Home.routeName,
      routes: routes,
      home: Home(
        isDark: isDark,
        toggleDarkMode: toggleDarkMode,
      ),
    );
  }
}
