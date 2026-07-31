import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/models/course.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'My courses',
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My courses',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              const SizedBox(height: 24),
              _buildCourseCard(context, course: papl),
              const SizedBox(height: 16),
              _buildCourseCard(context, course: maths),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCourseCard(
    BuildContext context, {
    required Course course,
  }) {
    return Card(
      color: moodleWhite,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: moodleBorder),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/course-details', arguments: course);
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: moodleGrayBg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.menu_book_outlined,
                  color: moodlePurple,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.code,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: moodleTextDark,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      course.title,
                      style: const TextStyle(
                        fontSize: 14,
                        color: moodleTextMuted,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Tap to open course details',
                      style: TextStyle(
                        fontSize: 12,
                        color: moodlePurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: moodleTextMuted),
            ],
          ),
        ),
      ),
    );
  }
}
