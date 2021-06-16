import 'package:flutter/material.dart';
import 'package:sldevtalks_flutter_00/data/rocket.dart';
import 'package:sldevtalks_flutter_00/services/rocket_service.dart';

class RocketPage extends StatelessWidget {
  static const routeName = '/rocket';
  const RocketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Rocket',
          ),
        ),
        body: FutureBuilder<Rocket?>(
          future: RocketService.getRocket(),
          builder: (BuildContext context, AsyncSnapshot<Rocket?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }

            Rocket? rocket = snapshot.data;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Text(
                  rocket?.name ?? '',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  rocket?.description ?? '',
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.network(rocket?.image ?? '')
              ],
            );
          },
        ));
  }
}
