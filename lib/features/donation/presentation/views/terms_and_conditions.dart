import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/donation/presentation/views/widgets/terms_and_conditions_body.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});
  static const id='terms and conditions';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon( Icons.arrow_back_ios)),elevation: 0,backgroundColor: Colors.transparent,title: Text('Terms and conditions',style: Styles.styles18Bold,),centerTitle: true,),
       body:const TermsAndConditionsBody(),
    );
  }
}