import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sldevtalks_flutter_00/services/rocket_service.dart';

class MockClient extends Mock implements Client {}

const Map<String, dynamic> rocketResponse = {
  "flickr_images": [
    "https://farm1.staticflickr.com/929/28787338307_3453a11a77_b.jpg",
  ],
  "name": "Falcon 9",
  "first_flight": "2010-06-04",
  "description":
      "Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit.",
  "id": "5e9d0d95eda69973a809d1ec"
};

void main() {
  late MockClient mockClient;
  late RocketService rocketService;

  setUpAll(() {
    registerFallbackValue(Uri.parse(''));

    mockClient = MockClient();
    rocketService = RocketService.internal(mockClient);
  });

  test('Rocket service test', () async {
    // Arrange

    when(() {
      return mockClient.get(any());
    }).thenAnswer((invocation) async {
      return Response(jsonEncode(rocketResponse), 200);
    });

    // Act
    final response = await rocketService.getRocket();

    // Assert
    expect(response?.id, '5e9d0d95eda69973a809d1ec');
  });
}
