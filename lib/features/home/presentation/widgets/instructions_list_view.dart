
import 'package:flutter/material.dart';

class InstructionsListView2 extends StatelessWidget {
  const InstructionsListView2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
         Text('A blood test must be done before donating blood to ensure that he does not have any serious diseases that may be transmitted through blood.'),
        SizedBox(
          height: 15,
        ), Text('There are some diseases for which some medications are taken that prevent a person from donating blood, so this must be taken into consideration. '),
        SizedBox(
          height: 15,
        ), Text('Abstaining from smoking before donating blood for a period of time, as well as abstaining from alcoholic beverages, which contain a high percentage, for at least six hours to purify the blood before donating it. '),
        SizedBox(
          height: 15,
        ),
        Text('At least, you must be 18 years old and weigh 50 kg '),
        SizedBox(
          height: 15,
        ),
        Text(
            'You must get enough hours of sleep before donating blood. '),
        SizedBox(
          height: 15,
        ),
        Text(
            'Do not take aspirin before donating blood for a whole day. '),
        SizedBox(
          height: 15,
        ),
        Text(
            'Eat balanced meals containing a large amount of nutrients and avoid fatty foods before donating blood. '),
        SizedBox(
          height: 15,
        ),
        Text(
            'Drink a large amount of fluids one day before donating blood, as well as after donating. '),
      ],
    );
  }
}
