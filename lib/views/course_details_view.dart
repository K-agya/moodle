import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Course details',
      body: const Center(child: Text('Course details page - TODO')),
    );
  }
}
