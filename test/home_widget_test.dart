import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sldevtalks_flutter_00/main.dart';

void main() {
  testWidgets('Home', (tester) async {
    await tester.pumpWidget(SLDevTalksApp());

    expect(find.text(' About'), findsOneWidget);

    final aboutButton = find.byType(ElevatedButton);
    await tester.tap(aboutButton);
    await tester.pumpAndSettle();

    expect(find.text('About Page Devs'), findsOneWidget);

    // await expectLater(find.byType(Home), matchesGoldenFile('golden/home.png'));
  });
}
