import 'package:flutter/material.dart';
import 'package:sldevtalks_flutter_00/pages/about.dart';
import 'package:sldevtalks_flutter_00/pages/home.dart';
import 'package:sldevtalks_flutter_00/pages/rocket.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (_) => Home(),
  About.routeName: (_) => About(),
  RocketPage.routeName: (_) => RocketPage(),
};
