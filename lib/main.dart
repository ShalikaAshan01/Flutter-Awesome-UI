import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/auth/login5.dart';
import 'package:flutter_ui/pages/auth/phone_auth1.dart';
import 'package:flutter_ui/pages/auth/phone_auth_continue_one.dart';
import 'package:flutter_ui/pages/auth/signup1.dart';
import 'package:flutter_ui/pages/auth/login2.dart';
import 'package:flutter_ui/pages/auth/login1.dart';
import 'package:flutter_ui/pages/auth/login3.dart';
import 'package:flutter_ui/pages/auth/login4.dart';
import 'package:flutter_ui/pages/auth/auth1.dart';
import 'package:flutter_ui/pages/home.dart';

void main() => runApp(MaterialApp(
  title: "Flutter Awesome UI",
  initialRoute: '/',
  routes: {
    '/':(context)=>Home(),
    '/auth/one':(context) => Auth1(),
    '/auth/login/one':(context) => Login1(),
    '/auth/login/two':(context) => Login2(),
    '/auth/login/three':(context) => Login3(),
    '/auth/login/four':(context) => Login4(),
    '/auth/login/five':(context) => Login5(),
    '/auth/phone/one':(context) => PhoneAuth1(),
    '/auth/phone/continue/one':(context) => PhoneAuthContinueOne(),
    '/auth/signup/one':(context) => SignUp1(),
  },
));