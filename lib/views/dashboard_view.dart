import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';
import 'package:moodle/constants.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Dashboard',
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Dashboard',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: moodlePurple),
              ),
              const SizedBox(height: 24),
              _card(
                'Course Overview',
                'You are currently enrolled in 2 modules: PAPL and MATHFUN. Tap "Courses" in the menu to view full details.',
                Icons.school_outlined,
              ),
              const SizedBox(height: 16),
              _card(
                'Upcoming Deadlines',
                'Item 1 (Flutter) — Referral and Deferral Coursework is due 29 July 2026, 13:00 (48-hour extension to 31 July 2026, 13:00).',
                Icons.event_outlined,
              ),
              const SizedBox(height: 16),
              _card(
                'Latest Announcements',
                'No new announcements at this time.',
                Icons.notifications_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card(String title, String body, IconData icon) => Card(
        color: moodleWhite,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: moodleBorder),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: moodlePurple),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: moodlePurple)),
                    const SizedBox(height: 8),
                    Text(body, style: const TextStyle(fontSize: 14, color: moodleTextMuted)),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}