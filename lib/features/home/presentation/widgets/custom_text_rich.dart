
import 'package:bloody/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: 'Drink a large amount of',
              style: Theme.of(context).textTheme.headline5,
            ),
            const TextSpan(
              text: ' fluids',
              style: TextStyle(color: kPrimaryColor),
            ),
            TextSpan(
              text:
                  ' to compensate for the amount of blood lost, such as juices and others.',
              style: Theme.of(context).textTheme.headline5,
            ),
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        RichText(
          text: TextSpan(children: [
            const TextSpan(
                text: 'Do not ', style: TextStyle(color: kPrimaryColor)),
            TextSpan(
              text:
                  ' exert excessive effort after performing the blood donation process and adhere to rest and calm.',
              style: Theme.of(context).textTheme.headline5,
            ),
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        RichText(
          text: TextSpan(children: [
            const TextSpan(
                text: 'Lie down ',
                style: TextStyle(color: kPrimaryColor)),
            TextSpan(
              text: ' and ',
              style: Theme.of(context).textTheme.headline5,
            ),
            const TextSpan(
                text: 'raise ', style: TextStyle(color: kPrimaryColor)),
            TextSpan(
              text: ' the feet up.',
              style: Theme.of(context).textTheme.headline5,
            ),
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text:
                  'Eat foods rich in especially iron, to compensate for the amount of blood lost.',
              style: Theme.of(context).textTheme.headline5,
            ),
            const TextSpan(
              text: ' minerals and vitamins,',
              style: TextStyle(color: kPrimaryColor),
            ),
            TextSpan(
              text: ' to compensate for the amount of blood lost.',
              style: Theme.of(context).textTheme.headline5,
            ),
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text:
                  'The area from which blood was donated must be taken care of so that it does not ',
              style: Theme.of(context).textTheme.headline5,
            ),
            const TextSpan(
              text: ' bleed.',
              style: TextStyle(color: kPrimaryColor),
            ),
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: 'If any  ',
              style: Theme.of(context).textTheme.headline5,
            ),
            const TextSpan(
              text: '  side effects ',
              style: TextStyle(color: kPrimaryColor),
            ),
            TextSpan(
              text:
                  'occur after donating blood, such as depression or muscle relaxation, you must consult a doctor ',
              style: Theme.of(context).textTheme.headline5,
            ),
            const TextSpan(
              text: '  immediately.',
              style: TextStyle(color: kPrimaryColor),
            ),
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            minWidth: 120,
            child: Text(
              'Done',
              style: Theme.of(context).textTheme.headline3,
              
            ),
            
          ),
        )
      ],
    );
  }
}