import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/donation/presentation/views/widgets/donation_history_body.dart';
import 'package:flutter/material.dart';

class DonationHistory extends StatelessWidget {
  const DonationHistory({super.key});
  static const id='donation history';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon( Icons.arrow_back_ios)),elevation: 0,backgroundColor: Colors.transparent,title: Text('Hospital Notification',style: Styles.styles18Bold,),centerTitle: true,),
     body:const DonationHistoryBody() ,
    );
  }
}