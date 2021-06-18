import 'package:flutter/material.dart';
import 'package:sldevtalks_flutter_00/data/rocket.dart';

class RocketsList extends StatelessWidget {
  late final List<Rocket> rockets;

  RocketsList({Key? key, required this.rockets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rockets.length,
      itemBuilder: (context, index) {
        Rocket rocket = rockets[index];

        return Card(
          child: ListTile(
            title: Text(
              rocket.name,
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text(
              rocket.firstFlight,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        );
      },
    );
  }
}
