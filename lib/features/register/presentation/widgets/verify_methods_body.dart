import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/register/presentation/views/verify_by_email.dart';
import 'package:bloody/features/register/presentation/views/verify_by_phone.dart';
import 'package:bloody/features/register/presentation/widgets/verify_list_view.dart';
import 'package:flutter/material.dart';

class VerifyMethodsBody extends StatelessWidget {
  const VerifyMethodsBody({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start
        ,children: [
        const SizedBox(height: 40,),
         Text('Verify your account',style: Theme.of(context).textTheme.headline1),
               const SizedBox(height: 10,),
            Text('Choose a method of verification.',style:Theme.of(context).textTheme.headline4),
            const SizedBox(height: 40,),
            VerifyListView()   ,
            Align(alignment: Alignment.bottomCenter,child: CustomButton(ontap: (){
              Navigator.of(context).pushNamed(selectedIndex==0?VerifyByEmail.id:VerifyByPhone.id);
            }, title: 'continue'))
      ],),
    );
  }
}