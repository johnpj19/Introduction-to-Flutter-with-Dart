import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_automation_demo/main.dart';

void main() {

  testWidgets(
    'Empty Username',
    (WidgetTester tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      await tester.enterText(
        find.byKey(const Key('password')),
        'password123',
      );

      await tester.tap(
        find.byKey(const Key('loginButton')),
      );

      await tester.pumpAndSettle();

      expect(
        find.text('Fields Required'),
        findsOneWidget,
      );
    },
  );
}