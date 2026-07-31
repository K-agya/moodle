import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moodle/main.dart';
import 'package:moodle/views/assessments_view.dart';
import 'package:moodle/views/calendar_view.dart';

void main() {
  Widget viewHarness(Widget view) => MaterialApp(
        routes: {
          '/calendar': (_) => const CalendarView(),
          '/profile': (_) => const Scaffold(),
          '/dashboard': (_) => const Scaffold(),
        },
        home: view,
      );

  testWidgets('assessments view displays each assessment and its status',
      (tester) async {
    await tester.pumpWidget(viewHarness(const AssessmentsView()));

    expect(find.text('Assessments'), findsWidgets);
    expect(find.text('Flutter Coursework'), findsOneWidget);
    expect(find.text('Date: 2024-06-27 | Status: Pending'), findsOneWidget);
    expect(find.text('Maths Assessment'), findsOneWidget);
    expect(find.text('Date: 2024-06-20 | Status: Marking'), findsOneWidget);
  });

  testWidgets('calendar view initially shows no events for 1 July',
      (tester) async {
    await tester.pumpWidget(viewHarness(const CalendarView()));
    await tester.pumpAndSettle();

    expect(find.text('Calendar'), findsWidgets);
    expect(find.text('Selected day events'), findsOneWidget);
    expect(find.text('No events for this day.'), findsOneWidget);
  });

  testWidgets('profile route shows student details and logs out',
      (tester) async {
    tester.view.physicalSize = const Size(1200, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await tester.pumpWidget(const MoodleApp());
    await tester.pumpAndSettle();

    final navigator = tester.state<NavigatorState>(find.byType(Navigator));
    navigator.pushNamed('/profile');
    await tester.pumpAndSettle();

    expect(find.text('Dennis Agyare'), findsOneWidget);
    expect(find.text('Computer Science BSc (Hons)'), findsOneWidget);
    await tester.tap(find.text('Log out'));
    await tester.pumpAndSettle();

    expect(find.widgetWithText(ElevatedButton, 'Log in'), findsOneWidget);
  });
}
