import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_automation_demo/main.dart';

void main() {

  testWidgets(
    'Both Credentials Invalid',
    (WidgetTester tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      await tester.enterText(
        find.byKey(const Key('username')),
        'abc',
      );

      await tester.enterText(
        find.byKey(const Key('password')),
        'xyz',
      );

      await tester.tap(
        find.byKey(const Key('loginButton')),
      );

      await tester.pumpAndSettle();

      expect(
        find.text('Login Failed'),
        findsOneWidget,
      );
    },
  );
}