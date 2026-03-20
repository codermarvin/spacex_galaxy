import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_galaxy_explorer/features/splash/presentation/screens/splash_screen.dart';

void main() {
  testWidgets('SplashScreen shows SpaceX text', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SplashScreen()));

    expect(find.text('SPACEX'), findsOneWidget);
    expect(find.text('GALAXY EXPLORER'), findsOneWidget);
  });
}
