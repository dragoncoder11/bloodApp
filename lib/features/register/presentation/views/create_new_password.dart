import 'package:bloody/features/register/presentation/widgets/create_new_password_body.dart';
import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});
  static const id='create new password';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon( Icons.arrow_back_ios,color:Theme.of(context).primaryColor ,)),elevation: 0,backgroundColor: Colors.transparent,),

      body:const CreateNewPasswordBody(),
    );
  }
}