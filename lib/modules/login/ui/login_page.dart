import 'package:flutter/material.dart';
import 'package:my_coach_ui/my_coach_ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController senhaController;

  @override
  void initState() {
    emailController = TextEditingController();
    senhaController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Spacer(),
            CoachInputField(
              controller: emailController,
              label: 'Email',
              onChanged: (value) {},
            ),
            const SizedBox(height: 12),
            CoachInputField(
              controller: senhaController,
              prefixIcon: AppIcons.lock_closed,
              label: 'Senha',
              onChanged: (value) {},
            ),
            const SizedBox(height: 48),
            const CoachButton(
              buttonRadius: true,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
