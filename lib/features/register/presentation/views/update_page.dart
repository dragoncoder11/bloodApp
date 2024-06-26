import 'package:bloody/features/register/presentation/widgets/login_page_body.dart';
import 'package:bloody/features/register/presentation/widgets/register.dart';
import 'package:bloody/features/register/presentation/widgets/update.dart';
import 'package:flutter/material.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});
  static const id = 'update';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: Update()),
    );
  }
}