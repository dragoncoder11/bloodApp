
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/styles.dart';

class HelpCard extends StatelessWidget {
  const HelpCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 170,
      decoration: BoxDecoration(
        color: kTextGreyColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Help people get a different life',
              style:Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 3,
            ),
            const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 13,
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'Donate',
              style: Theme.of(context).textTheme.headline6
            )
          ],
        ),
      ),
    );
  }
}
