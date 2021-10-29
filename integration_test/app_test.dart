@Tags(['browser'])
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_application_1/main.dart' as app;
import 'package:integration_test/integration_test_driver.dart';
import 'package:integration_test/integration_test_driver_extended.dart';

//void tearDown(dynamic Function() body) {
// _declarer.tearDown(body);
//}
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets(
      'Increment Counter 1 time',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 1));
        // Verify the counter starts at 0.
        expect(find.text('0'), findsOneWidget);
        final Finder fab = find.byTooltip('Increment');
        await tester.tap(fab);
        await tester.pumpAndSettle();

        expect(find.text('1'), findsOneWidget);
      },
    );
  });

  testWidgets('Increment Counter 2 times', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    // Verify the counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    final Finder fab = find.byTooltip('Increment');
    await tester.tap(fab);
    await tester.tap(fab);

    await tester.pumpAndSettle();

    expect(find.text('2'), findsOneWidget);
  });

  testWidgets('Increment Counter 3 times', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    // Verify the counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    final Finder fab = find.byTooltip('Increment');
    await tester.tap(fab);
    await tester.tap(fab);
    await tester.tap(fab);

    await tester.pumpAndSettle();

    expect(find.text('3'), findsOneWidget);
  });

  testWidgets('Increment Counter 4 times', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 1));
    // Verify the counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    final Finder fab = find.byTooltip('Increment');
    await tester.tap(fab);
    await tester.tap(fab);
    await tester.tap(fab);
    await tester.tap(fab);
    await tester.pumpAndSettle();

    expect(find.text('4'), findsOneWidget);
  });

  // tearDown(() async {
  // final response = await http.post(
  //    Uri.parse('https://api.zephyrscale.smartbear.com/v2/testexecutions'));
  //  print(response);
  //});
//}
}
