import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Initial tests", () {
    setUpAll(() {
      print('Running setup all');
    });

    setUp(() {
      print('Running setup');
    });

    test('Hello test 1', () {
      print('Running test 1');

      String hello = 'Hello SLDevTalks';

      expect(hello, "Hello SLDevTalks");
    });

    test('Hello test 2', () {
      print('Running test 2');

      String hello = 'Hello SLDevTalks';

      expect(hello, "Hello SLDevTalks");
    });

    tearDownAll(() {
      print('Running tear down all');
    });

    tearDown(() {
      print('Running tear down');
    });
  });
}
