import 'package:bloody/features/register/presentation/widgets/verify_by_phone_body.dart';
import 'package:flutter/material.dart';

class VerifyByPhone extends StatelessWidget {
  const VerifyByPhone({super.key});
 static const id='VerifyByPhone';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon( Icons.arrow_back_ios,color: Theme.of(context).primaryColor ,)),elevation: 0,backgroundColor: Colors.transparent,),
      body: VerifyByPhoneBody() ,
    );
  }
}