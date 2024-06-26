import 'package:bloody/features/home/presentation/widgets/register_donation_body.dart';
import 'package:flutter/material.dart';

class RegisterDonation extends StatelessWidget {
  const RegisterDonation({super.key});
  static String id = 'RG';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterDonationBody(),
    );
  }
}
