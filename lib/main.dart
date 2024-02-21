import 'package:flutter/material.dart';
import 'package:smartwatch_application/dashboard.dart';
import 'package:smartwatch_application/login.dart';
import 'package:smartwatch_application/register.dart';
import 'package:smartwatch_application/home.dart';
import 'package:smartwatch_application/doctorinfo.dart';
import 'package:smartwatch_application/healthcenter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'login':(context) => const MyLogin(),
      'register':(context) => const MyRegister(),
      'home':(context)=>const MyHome(),
      'dashboard':(context)=>const StartScreen(),
      'doctorinfo':(context)=>const DoctorInfoScreen(),
      'healthcenter':(context)=>const HospitalInfoScreen(),
    },
  ));
}

