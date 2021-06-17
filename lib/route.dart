import 'package:demo/pages/google_sign/googlesign.dart';
import  'package:flutter/widgets.dart';
import 'package:demo/pages/sign_in/sign.dart';
import 'package:demo/pages/signup/sign_up.dart';
import 'package:demo/pages/home/home.dart';

final Map<String,WidgetBuilder> routes={

  signin.routeName:(context) =>signin(),
  SignUp.routeName:(context) => SignUp(),
  HomePage.routeName:(context) => HomePage(),
  GoogleSign.routeName:(context) =>GoogleSign()


};