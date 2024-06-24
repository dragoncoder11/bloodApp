import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'instructions_list_view.dart';

class DonationPageBody extends StatelessWidget {
  const DonationPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Instructions ',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/blood.png',
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: kPrimaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              height: MediaQuery.of(context).size.height * .3,
              child:const Padding(
                padding:  EdgeInsets.all(10),
                child: InstructionsListView(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  child: const Text(
                    'Donate',
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
