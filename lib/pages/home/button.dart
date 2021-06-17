import 'package:flutter/material.dart';
import 'package:demo/components/default_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:demo/pages/google_sign/componets/login.dart';
import 'package:demo/pages/sign_in/sign.dart';
import 'package:demo/size_settings.dart';
class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login Success",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            DefaultButton(
              text: 'Sign out ',
              press: () async{
               try{
                 var logout=await LoginGoogle().createState().Logout();
                 Navigator.pushNamed(context, signin.routeName);
               }
               catch(e){
                 print("error");
               }

              }
            )
          ],
        ),
      ),
    );
  }
}
