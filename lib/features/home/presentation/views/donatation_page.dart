import 'package:bloody/features/home/presentation/widgets/donation_page_body.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});
  static String id = 'DP';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DonationPageBody(),
    );
  }
}
