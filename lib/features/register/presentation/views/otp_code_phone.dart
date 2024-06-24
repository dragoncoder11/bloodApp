import 'package:bloody/features/register/presentation/widgets/otp_code_phone_body.dart';
import 'package:flutter/material.dart';

class OtpCodePhone extends StatelessWidget {
  const OtpCodePhone({super.key});
  static const id='otp phone page';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon( Icons.arrow_back_ios,color: Theme.of(context).primaryColor ,)),elevation: 0,backgroundColor: Colors.transparent,),
       body:const OtpCodePhoneBody(),
    );
  }
}