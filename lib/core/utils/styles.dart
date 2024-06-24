import 'package:bloody/core/utils/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles{
  static TextStyle style24Bold=const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold,
  );
   static TextStyle style14Bold=const TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: 'Arial',
    fontWeight: FontWeight.bold,
  );
   static TextStyle style14= TextStyle(
    color: kTextGreyColor,
    fontSize: 14,
    fontFamily: 'Arial',
  );
   static TextStyle style12= TextStyle(
    color: kTextGreyColor,
    fontSize: 12,
    fontFamily: 'Arial',
  );
   static TextStyle style16SemiBold=const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Archivo',
    fontWeight: FontWeight.normal,
  );
  static TextStyle style11= TextStyle(
    color: kTextGreyColor,
    fontSize: 11,
    fontFamily: 'Arial',
  );
   static TextStyle styles18Bold=const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
} 