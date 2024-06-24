import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsBody extends StatelessWidget {
  const TermsAndConditionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
              const SizedBox(height: 40,),
          csutomcolumntext(title: '1. Acceptance of Terms',subtitle: 'By downloading, installing, accessing, or using Vein 2 Vein, you agree to comply with and be bound by these terms and conditions, along with our Privacy Policy. If you do not agree with any part of these terms, you may not use our app.'),
          csutomcolumntext(title: '2. License',subtitle: 'We grant you a non-exclusive, non-transferable, limited license to use Vein 2 Vein solely for your personal, non-commercial purposes, subject to these terms and the applicable app store\'s terms of service.'),
          csutomcolumntext(title: '3. User Account',subtitle: 'Some features of Vein 2 Vein may require you to create an account. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account. You agree to provide accurate, current, and complete information during the registration process and to update such information to keep it accurate, current, and complete.'),
          csutomcolumntext(title: '4. Use of the App',subtitle: 'You agree to use Vein 2 Vein only for lawful purposes and in a manner consistent with all applicable local, national, and international laws and regulations.'),
        ],
      ),
    );
  }

  Column csutomcolumntext({required String title,required String subtitle}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(title,style: Styles.style14Bold.copyWith(color: Colors.black.withOpacity(.8)),),
    const SizedBox(height: 10,),
    Text(subtitle,
    style: Styles.style12.copyWith(color: Colors.black),),
    const SizedBox(height: 30,),
    
    ],
  );
  }
}