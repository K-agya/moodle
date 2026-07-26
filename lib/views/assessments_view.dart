import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';

class AssessmentsView extends StatelessWidget {
  const AssessmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Assessments',
      body: const Center(child: Text('Assessments page - TODO')),
    );
  }
}
