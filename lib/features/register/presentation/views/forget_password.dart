import 'package:bloody/features/register/presentation/widgets/forget_password_body.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  static const id='forget password';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon( Icons.arrow_back_ios,color:Theme.of(context).primaryColor  ,)),elevation: 0,backgroundColor: Colors.transparent,),

      body:const ForgetPasswordBody(),
    );
  }
}