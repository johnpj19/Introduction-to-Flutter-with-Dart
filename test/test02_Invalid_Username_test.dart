import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_automation_demo/main.dart';

void main() {

  testWidgets(
    'Invalid Username Login Test',
    (WidgetTester tester) async {

      await tester.pumpWidget(
        const MyApp(),
      );

      await tester.enterText(
        find.byKey(const Key('username')),
        'wronguser',
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
        find.text('Login Failed'),
        findsOneWidget,
      );
    },
  );
}