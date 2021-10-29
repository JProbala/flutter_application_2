import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_application_1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

//setUp(() async {
  //   driver = await FlutterDriver.connect();
  //   });

  tearDown(() async {});

  group('end-to-end test', () {
    testWidgets('Increment Counter 1 time', (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 1));
      // Verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);
      final Finder fab = find.byTooltip('Increment');
      await tester.tap(fab);
      await tester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);
    }, tags: ['android', 'web', 'ios']);
  });
}
