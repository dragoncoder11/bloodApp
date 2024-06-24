
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/custom_text_field.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({
    super.key,
  });
  @override
  
  Widget build(BuildContext context) {
        var emailController=TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
               const SizedBox(height: 40,),
               Text('Forgotten Password',style:Theme.of(context).textTheme.headline1),
                     const SizedBox(height: 10,),
                  Text('Please enter an email address that you used to create account with so we can send you an email to reset your password.',style:Theme.of(context).textTheme.headline4),
                  const SizedBox(height: 40,),
                 CustomTextField(hint: 'email',controller: emailController,)
            ],),
          ),
           Align(alignment: Alignment.bottomCenter,child: CustomButton(ontap: (){
          
           }, title: 'Send email'))

        ],
      ),
    );
  }
}