import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Profile',
      body: const Center(child: Text('Profile page - TODO')),
    );
  }
}
