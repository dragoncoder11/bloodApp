import 'package:bloody/features/home/presentation/widgets/donation_page_body.dart';
import 'package:bloody/features/home/presentation/widgets/dontation_page_body_sec.dart';
import 'package:flutter/material.dart';

class DonationPageSec extends StatelessWidget {
  const DonationPageSec({super.key});
  static String id = 'DS';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DonationPageBodys(),
    );
  }
}
