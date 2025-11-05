import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_case_demo/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Counter App Integration Test', () {
    testWidgets('Increment button increases counter', (tester) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Verify initial counter value
      expect(find.text('0'), findsOneWidget);

      // Tap the "+" icon
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // Verify counter incremented
      expect(find.text('1'), findsOneWidget);
    });
  });
}
