import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sldevtalks_flutter_00/config.dart';
import 'package:sldevtalks_flutter_00/data/rocket.dart';

class RocketService {
  static Future<Rocket?> getRocket() async {
    final response = await http.get(
        Uri.parse("${Config.BACKEND_URL}rockets/5e9d0d95eda69973a809d1ec"));

    if (response.statusCode == 200) {
      return Rocket.fromJSON(jsonDecode(response.body));
    }
  }
}