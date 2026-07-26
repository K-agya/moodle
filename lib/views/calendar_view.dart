import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Calendar',
      body: const Center(child: Text('Calendar page - TODO')),
    );
  }
}
