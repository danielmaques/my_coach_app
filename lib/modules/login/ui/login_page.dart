// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_coach_ui/my_coach_ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Spacer(),
            CoachInputField(
              controller: emailController,
              label: 'Email',
              prefixIcon: AppIcons.mail,
            ),
            SizedBox(height: 12),
            CoachInputField(
              controller: passwordController,
              label: 'Senha',
              prefixIcon: AppIcons.lock_closed,
            ),
            SizedBox(height: 48),
            CoachButton(
              label: 'CONTINUAR',
              buttonRadius: true,
              onTap: null,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
