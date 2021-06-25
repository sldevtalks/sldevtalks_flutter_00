import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:sldevtalks_flutter_00/config.dart';
import 'package:sldevtalks_flutter_00/data/rocket.dart';

class RocketService {
  final http.Client _client;

  RocketService() : _client = http.Client();

  @visibleForTesting
  RocketService.internal(this._client);

  Future<Rocket?> getRocket() async {
    final response = await _client.get(
        Uri.parse("${Config.BACKEND_URL}rockets/5e9d0d95eda69973a809d1ec"));

    if (response.statusCode == 200) {
      return Rocket.fromJSON(jsonDecode(response.body));
    }
  }

  Future<List<Rocket>?> getRockets() async {
    final response =
        await _client.get(Uri.parse("${Config.BACKEND_URL}rockets"));

    if (response.statusCode == 200) {
      return jsonDecode(response.body).map<Rocket>((data) {
        return Rocket.fromJSON(data);
      }).toList();
    }
  }
}
