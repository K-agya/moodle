import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/widgets/nav_drawer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.title,
    required this.body,
    this.actions,
    this.floatingActionButton,
  }) : super(key: key);

  final String title;
  final Widget body;
  final List<Widget>? actions;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    final defaultActions = <Widget>[
      IconButton(
        icon: const Icon(Icons.search_outlined),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.notifications_none_outlined),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.chat_bubble_outline),
        onPressed: () {},
      ),
      const SizedBox(width: 8),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/profile');
        },
        borderRadius: BorderRadius.circular(18),
        child: const CircleAvatar(
          radius: 18,
          backgroundColor: moodleGrayBg,
          foregroundColor: moodlePurple,
          child: Text(
            'DA',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
      ),
      const SizedBox(width: 16),
    ];

    return Scaffold(
      appBar: AppBar(
  backgroundColor: moodleWhite,
  foregroundColor: moodleTextDark,
  elevation: 1,
  titleSpacing: 0,
  title: Row(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(context, '/dashboard', (route) => false);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: 32,
          height: 32,
          child: Image.asset(
            'images/moodle_logo.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ],
  ),
  actions: actions ?? defaultActions,
),
      drawer: const NavDrawer(),
      floatingActionButton: floatingActionButton,
      body: body,
    );
  }
}
