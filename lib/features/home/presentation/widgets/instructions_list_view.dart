import 'package:bloody/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InstructionsListView extends StatelessWidget {
  const InstructionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        RichText(
          text: TextSpan(children: [
           const TextSpan(text: 'A blood ', style: TextStyle(color: kPrimaryColor)),
            TextSpan(
              text:
                  ' test must be done before donating blood to ensure that he does not have any serious diseases that may be transmitted through blood.',
              style: Theme.of(context).textTheme.headline5,
            ),
          ]),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'There are some diseases for which some medications are taken that prevent a person from donating blood, so this must be taken into consideration. ',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Abstaining from smoking before donating blood for a period of time, as well as abstaining from alcoholic beverages, which contain a high percentage, for at least six hours to purify the blood before donating it. ',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'At least, you must be 18 years old and weigh 50 kg ',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'You must get enough hours of sleep before donating blood. ',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Do not take aspirin before donating blood for a whole day. ',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Eat balanced meals containing a large amount of nutrients and avoid fatty foods before donating blood. ',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Drink a large amount of fluids one day before donating blood, as well as after donating. ',
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
