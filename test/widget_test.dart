import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moodle/main.dart';
import 'package:moodle/models/course.dart';

void main() {
  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(const MoodleApp());
    await tester.pumpAndSettle();
  }

  testWidgets('app starts on the dashboard', (tester) async {
    await pumpApp(tester);

    expect(find.text('Dashboard'), findsWidgets);
    expect(find.text('Course Overview'), findsOneWidget);
    expect(find.text('Latest Announcements'), findsOneWidget);
  });

  testWidgets('drawer navigates to My courses', (tester) async {
    await pumpApp(tester);

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();
    await tester.tap(find.text('My courses'));
    await tester.pumpAndSettle();

    expect(find.text(papl.code), findsOneWidget);
    expect(find.text(maths.code), findsOneWidget);
  });

  testWidgets('course card opens its details view', (tester) async {
    await pumpApp(tester);

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();
    await tester.tap(find.text('My courses'));
    await tester.pumpAndSettle();
    await tester.tap(find.text(papl.code));
    await tester.pumpAndSettle();

    expect(find.text(papl.title), findsOneWidget);
    expect(
      find.text('Module Coordinator: ${papl.coordinator}'),
      findsOneWidget,
    );
    expect(find.text('Course Overview'), findsOneWidget);
  });

  testWidgets('login button returns the user to the dashboard', (tester) async {
    await pumpApp(tester);

    final navigator = tester.state<NavigatorState>(find.byType(Navigator));
    navigator.pushNamed('/login');
    await tester.pumpAndSettle();

    expect(find.widgetWithText(ElevatedButton, 'Log in'), findsOneWidget);
    await tester.tap(find.widgetWithText(ElevatedButton, 'Log in'));
    await tester.pumpAndSettle();

    expect(find.text('Dashboard'), findsWidgets);
  });
}
