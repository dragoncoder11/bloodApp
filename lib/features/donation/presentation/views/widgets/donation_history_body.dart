import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DonationHistoryBody extends StatelessWidget {
  const DonationHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:  Column(
        children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
               Text('Notifications',style: Styles.style24Bold,),
               const SizedBox(height: 40,),
               Text('09-08-2023',style: Styles.style14,),
              Text('Donated at Dar El Sallam hospital, Cairo.',style: Styles.style14,),
               const Divider(color: kTextGreyColor,thickness: 1,height: 50,),
                 Text('09-08-2023',style: Styles.style14,),
              Text('Donated at Dar El Sallam hospital, Cairo.',style: Styles.style14,),
               const Divider(color: kTextGreyColor,thickness: 1,height: 50,),  Text('09-08-2023',style: Styles.style14,),
              Text('Donated at Dar El Sallam hospital, Cairo.',style: Styles.style14,),
               const Divider(color: kTextGreyColor,thickness: 1,height: 50,),
              
            ],),
          ),
           CustomButton(ontap: (){}, title: 'Donate'),
        ],
      ),
    );
  }
}