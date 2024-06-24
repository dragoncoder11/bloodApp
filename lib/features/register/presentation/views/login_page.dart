
import 'package:bloody/features/register/presentation/widgets/login_page_body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const id='login page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: LoginPageBody(),
    );
  }
}