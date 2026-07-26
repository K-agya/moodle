import 'package:flutter/material.dart';
import 'package:moodle/widgets/app_scaffold.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Login',
      body: const Center(child: Text('Login page - TODO')),
    );
  }
}
