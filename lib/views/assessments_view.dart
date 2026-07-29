import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';
import 'package:moodle/constants.dart';

class AssessmentsView extends StatelessWidget {
  const AssessmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Assessments',
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Assessments',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              const SizedBox(height: 24),
              _buildAssessmentCard(
                title: 'Flutter Coursework',
                subtitle: 'Date: 2024-06-27 | Status: Pending',
              ),
              const SizedBox(height: 16),
              _buildAssessmentCard(
                title: 'Maths Assessment',
                subtitle: 'Date: 2024-06-20 | Status: Marking',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAssessmentCard({
    required String title,
    required String subtitle,
  }) {
    return Card(
      color: moodleWhite,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: moodleBorder),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
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
                Icons.assignment_outlined,
                color: moodlePurple,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: moodleTextDark,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: moodleTextMuted,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Tap to view assessment details',
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
    );
  }
}
