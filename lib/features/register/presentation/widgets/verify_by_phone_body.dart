
import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/register/presentation/views/otp_code_phone.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class VerifyByPhoneBody extends StatelessWidget {
   VerifyByPhoneBody({
    super.key,
  });
       String controller='';

  @override
  
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
               const SizedBox(height: 40,),
               Text('Phone Number',style:Theme.of(context).textTheme.headline1),
                     const SizedBox(height: 10,),
                  Text('we\'re going to send you a',style:Theme.of(context).textTheme.headline4),
                  Text('verification code.',style: Theme.of(context).textTheme.headline4),
                  const SizedBox(height: 40,),
                  IntlPhoneField(
                    keyboardType: TextInputType.phone,
                    decoration:const InputDecoration(
                      
                      focusedBorder:OutlineInputBorder(
                        
            borderSide: BorderSide(color: kPrimaryColor,width: 2),
        ), 
        labelText: 'Phone Number',
        labelStyle: TextStyle(color: kTextGreyColor),
        border: OutlineInputBorder(
            borderSide: BorderSide(),
        ),
    ),
    initialCountryCode: 'en',
    onChanged: (phone) {

        print(phone.completeNumber);
        controller=phone.completeNumber ;
    },
                  )
            ],),
          ),
           Align(alignment: Alignment.bottomCenter,child: CustomButton(ontap: (){
            Navigator.of(context).pushNamed(OtpCodePhone.id,
            arguments: 
              controller
            );
           }, title: 'verify'))

        ],
      ),
    );
  }
}