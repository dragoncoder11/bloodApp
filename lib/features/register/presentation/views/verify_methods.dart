import 'package:bloody/features/register/presentation/widgets/verify_methods_body.dart';
import 'package:flutter/material.dart';

class VerifyMethods extends StatelessWidget {
  const VerifyMethods({super.key});
  static const id='verify methods';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){}, icon: Icon( Icons.arrow_back_ios,color: Theme.of(context).primaryColor ,)),elevation: 0,backgroundColor: Colors.transparent,),
      body:const VerifyMethodsBody() ,

    );
  }
}