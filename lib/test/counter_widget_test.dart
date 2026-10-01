import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:program10a/counter_widget.dart';

void main() {
  testWidgets('Counter increments test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(home: CounterWidget()),
    );

    expect(find.text('Counter: 0'), findsOneWidget);
    expect(find.text('Counter: 1'), findsNothing);

    await tester.tap(
      find.byKey(Key('incrementButton')),
    );

    await tester.pump();

    expect(find.text('Counter: 0'), findsNothing);
    expect(find.text('Counter: 1'), findsOneWidget);
  });
}
