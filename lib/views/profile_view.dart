import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';
import 'package:moodle/constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Profile',
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: moodlePurple,
                  child: Icon(
                    Icons.person,
                    size: 56,
                    color: moodleWhite,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Column(
                  children: [
                    Text(
                      'Dennis Agyare',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: moodlePurple,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'up2269672',
                      style: TextStyle(
                        fontSize: 16,
                        color: moodleTextMuted,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Card(
                color: moodleWhite,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: moodleBorder),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Personal Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _DetailRow(
                        icon: Icons.email_outlined,
                        label: 'Email',
                        value: 'up2269672@myport.ac.uk',
                      ),
                      const SizedBox(height: 16),
                      _DetailRow(
                        icon: Icons.school_outlined,
                        label: 'Course / Programme',
                        value: 'Computer Science BSc (Hons)',
                      ),
                      const SizedBox(height: 16),
                      _DetailRow(
                        icon: Icons.calendar_today_outlined,
                        label: 'Year of Study',
                        value: '3',
                      ),
                      const SizedBox(height: 16),
                      _DetailRow(
                        icon: Icons.badge_outlined,
                        label: 'Student ID',
                        value: '2269672',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: moodleGrayBg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: moodlePurple, size: 22),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: moodleTextMuted,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: moodleTextDark,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
