import 'package:flutter/material.dart';
import 'package:sldevtalks_flutter_00/components/rocket_list.dart';
import 'package:sldevtalks_flutter_00/data/rocket.dart';
import 'package:sldevtalks_flutter_00/services/rocket_service.dart';

class Rockets extends StatelessWidget {
  static const String routeName = '/rockets';
  final RocketService _rocketService;

  Rockets({Key? key})
      : _rocketService = RocketService(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rockets"),
      ),
      body: FutureBuilder<List<Rocket>?>(
        future: _rocketService.getRockets(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error!"),
            );
          } else if (snapshot.hasData) {
            List<Rocket>? rockets = snapshot.data;

            return Container(
              padding: EdgeInsets.all(10),
              child: rockets != null
                  ? RocketsList(rockets: rockets)
                  : Container(
                      child: Text("Nothing to show here!"),
                    ),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
