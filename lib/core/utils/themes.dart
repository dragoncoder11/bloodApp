

import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';



  ThemeData lightTheme=ThemeData(
  brightness: Brightness.light,
  canvasColor: Colors.black,
  colorScheme:const ColorScheme.light(

    background: Colors.white,
    primary:Colors.black,
   
    
  ),
  focusColor:  Colors.transparent,
  textTheme:TextTheme(headline3:Styles.style16SemiBold,
  headline2:Styles.styles18Bold,
 // titleLarge:Styles.style24Bold,
 
  headline4:Styles.style14Bold,
  headline5:Styles.style14,
    headline6:Styles.style12,

  headline1:Styles.style24Bold,

  )

);
 ThemeData darkTheme=ThemeData(
  brightness: Brightness.light,
    canvasColor: Colors.white,

  colorScheme:const ColorScheme.light(
    background: Color(0xff222831),
    primary:  Colors.white,
    
  ),
  textTheme: TextTheme(
    
  headline2:Styles.styles18Bold.copyWith(color:kTextWhiteColor),
 // titleLarge:Styles.style24Bold.copyWith(color:kTextWhiteColor),
  headline3:Styles.style16SemiBold.copyWith(color: Colors.black),
  headline4:Styles.style14Bold.copyWith(color:kTextWhiteColor),
    headline5:Styles.style14.copyWith(color:kTextWhiteColor),
    headline6:Styles.style12.copyWith(color:kTextWhiteColor),

  headline1:Styles.style24Bold.copyWith(color:kTextWhiteColor),
  )

);