import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';
import 'package:moodle/constants.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'My courses',
      body: Container(
        color: moodleBg,
        child: const SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My courses',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'This is the courses overview page.',
                style: TextStyle(fontSize: 16, color: moodleTextDark),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
