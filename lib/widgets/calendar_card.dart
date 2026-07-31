import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';

class CalendarCard extends StatelessWidget {
  const CalendarCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
            Row(
              children: [
                const Icon(Icons.event_outlined, color: moodlePurple),
                const SizedBox(width: 12),
                const Text(
                  'Calendar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: moodlePurple),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/calendar'),
                  child: const Text('View all'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _eventRow('20 Jul', 'Maths Assessment is due'),
            _eventRow('29 Jul', 'Flutter Coursework is due'),
          ],
        ),
      ),
    );
  }

  Widget _eventRow(String date, String label) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(top: 6),
              decoration: const BoxDecoration(color: moodlePurple, shape: BoxShape.circle),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                '$date — $label',
                style: const TextStyle(fontSize: 14, color: moodleTextDark),
              ),
            ),
          ],
        ),
      );
}