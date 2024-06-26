import 'package:bloody/core/utils/constants.dart';
import 'package:flutter/material.dart';

import 'custom_text_rich.dart';

class ThankYouPageBody extends StatelessWidget {
  const ThankYouPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [
         SizedBox(
          height: 45,
        ),
         Text(
          'Thanks for registering, hurry up to donate!',
          style: TextStyle(
              color: kPrimaryColor, fontSize: 38, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
         SizedBox(
          height: 20,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24),
          child: CustomTextRich(),
        ),
      ],
    ));
  }
}