import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';
import 'package:moodle/constants.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'M30235 - PAPL',
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('M30235 - Programming Applications and Programming Languages (2025/26)',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: moodlePurple)),
              const SizedBox(height: 8),
              const Text('Module Coordinator: Dr Jiacheng Tan', style: TextStyle(color: moodleTextMuted)),
              const SizedBox(height: 24),
              _section('Course Overview', 'The first part of the module builds upon students existing programming and database knowledge, guiding them in constructing complex, interactive, cross-platform applications. Students will learn to utilise modern development tools and methodologies to create software. The second part explores programming language design and implementation concepts including language evaluation, syntax specification, compilation, control structures, memory allocation and abstraction mechanisms. The learning outcomes aim at achieving the graduate hallmark of having a critical and reflective knowledge and understanding of the subject, thinking independently, analytically and creatively, and being able to synthesise new and existing knowledge to generate ideas and develop creative solutions.'),
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