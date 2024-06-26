import 'package:bloody/features/register/presentation/widgets/login_page_body.dart';
import 'package:bloody/features/register/presentation/widgets/register.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static const id = 'reg';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: Register()),
    );
  }
}