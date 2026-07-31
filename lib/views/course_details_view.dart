import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/models/course.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final course = ModalRoute.of(context)!.settings.arguments as Course;

    return AppScaffold(
      title: course.code,
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(course.title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: moodlePurple)),
              const SizedBox(height: 8),
              Text('Module Coordinator: ${course.coordinator}', style: const TextStyle(color: moodleTextMuted)),
              const SizedBox(height: 24),
              _section('Course Overview', course.overview),
              _section('Learning Materials', 'Lecture slides, worksheets, and coursework briefs are available on Moodle.'),
              _section('Assessment', 'Coursework submission via forked GitHub repository, demonstrated in a live online demo.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _section(String title, String body) => Card(
        color: moodleWhite,
        elevation: 0,
        shape: const RoundedRectangleBorder(side: BorderSide(color: moodleBorder), borderRadius: BorderRadius.all(Radius.circular(8))),
        margin: const EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: moodlePurple)),
              const SizedBox(height: 8),
              Text(body, style: const TextStyle(fontSize: 14, color: moodleTextMuted)),
            ],
          ),
        ),
      );
}