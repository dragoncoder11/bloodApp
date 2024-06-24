import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpCodePhoneBody extends StatelessWidget {
  const OtpCodePhoneBody({super.key});
  @override
  Widget build(BuildContext context) {
    final controller=ModalRoute.of(context)?.settings.arguments.toString();
    return  Padding(
      padding:const  EdgeInsets.symmetric(horizontal:20.0),
      child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
               const SizedBox(height: 40,),
               Text('Verifying Code',style: Theme.of(context).textTheme.headline1),
                     const SizedBox(height: 10,),
                  Text('Code has been sent to    $controller',style: Theme.of(context).textTheme.headline4),
                  const SizedBox(height: 80,),
                OtpTextField(
        numberOfFields: 4,
        borderRadius: BorderRadius.circular(8),
        enabledBorderColor: kPrimaryColor,
        fieldWidth: 60,
        borderColor: Colors.black.withOpacity(.7),
        focusedBorderColor: kPrimaryColor,
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title:const Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),
            ],),
          ),
        
           Align(alignment: Alignment.bottomCenter,child: CustomButton(ontap: (){}, title: 'verify'))

        ],
      ),
    );
  }
}