import 'package:flutter/material.dart';
import 'package:sldevtalks_flutter_00/data/rocket.dart';

class RocketArguments {
  final Rocket rocket;

  RocketArguments({required this.rocket});
}

class RocketPage extends StatelessWidget {
  static const routeName = '/rocket';
  const RocketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RocketArguments args =
        ModalRoute.of(context)?.settings.arguments as RocketArguments;

    final Rocket rocket = args.rocket;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Rocket',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Text(
              rocket.name,
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              rocket.description,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            Image.network(rocket.image)
          ],
        ));
  }
}
