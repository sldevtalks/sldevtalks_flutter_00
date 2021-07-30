import 'package:flutter/material.dart';
import 'package:sldevtalks_flutter_00/pages/about.dart';
import 'package:sldevtalks_flutter_00/pages/home.dart';
import 'package:sldevtalks_flutter_00/pages/rocket.dart';
import 'package:sldevtalks_flutter_00/pages/rockets.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (_) => const Home(),
  About.routeName: (_) => const About(),
  RocketPage.routeName: (_) => const RocketPage(),
  Rockets.routeName: (_) => Rockets(),
};
