import 'package:flutter/material.dart';

import '../widgets/thank_you_body.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});
static String id='thank you';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instructions',
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const ThankYouPageBody(),
    );
  }
}
