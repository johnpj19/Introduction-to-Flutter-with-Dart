import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_automation_demo/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Login Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(
      find.byKey(const Key('username')),
      'john',
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
      find.text('Login Successful'),
      findsOneWidget,
    );
  });
}