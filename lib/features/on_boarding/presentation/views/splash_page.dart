import 'package:bloody/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:flutter/material.dart';

import '../widgets/splash_body.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
static String id='splash';
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed(OnBoarding.id);
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SplashBody() ,
    );
  }
}