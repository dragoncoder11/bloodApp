
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/custom_text_field.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordBody extends StatelessWidget {
  const CreateNewPasswordBody({
    super.key,
  });
  @override
  
  Widget build(BuildContext context) {
    var newPasswordController=TextEditingController();
    var confirmNewPasswordController=TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
               const SizedBox(height: 40,),
               Text('Create New Password',style: Theme.of(context).textTheme.headline1 ,),
                     const SizedBox(height: 10,),
                  Text('Your new password must be different from your previously used password.',style:  Theme.of(context).textTheme.headline4 ),
                  const SizedBox(height: 40,),
                 CustomTextField(hint: 'new password',controller: newPasswordController,),
                 CustomTextField(hint: 'confirm new password',controller: confirmNewPasswordController,),
            ],),
          ),
           Align(alignment: Alignment.bottomCenter,child: CustomButton(ontap: (){
            return showDialog(context: context, builder: (BuildContext context) {
              return  AlertDialog(backgroundColor:Colors.white ,
        title:  Text('success!',style:  Theme.of(context).textTheme.headline1 ),
        content:  SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Image.asset('assets/sucess.png'),
             const SizedBox(height: 10,),
              Text('Your password has been changed.  From now on use your new password to log in.',textAlign: TextAlign.center,style:Theme.of(context).textTheme.headline4),
            ],
          ),
        ),);
            });
           }, title: 'Reset password'))

        ],
      ),
    );
  }
}