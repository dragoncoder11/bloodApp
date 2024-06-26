import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/home/presentation/nearest_hospital.dart';
import 'package:bloody/features/register/presentation/views/update_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'help_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(UpdatePage.id);
            },
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.person,
                color:Theme.of(context).backgroundColor,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
         const Text(
            'Hi Donator!',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: kPrimaryColor)
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/vein.jpg'),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NearestHospital(),
              ));
            },
            child: Stack(alignment: Alignment.center, children: [
              Image.asset('assets/help.png'),
              const HelpCard(),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * .2,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: kTextGreyColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text(
                  'Benifits',
                  style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black)
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'It may contribute to reducing the risk of heart and arterial diseases.',
                  style: Theme.of(context).textTheme.headline3
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}