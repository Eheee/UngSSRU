import 'dart:ui' as prefix1;

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:ung_ssru/screens/register.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  double mySize = 180.0;

  Widget mySizeBox() {
    return SizedBox(
      width: 8.0,
    );
  }

  Widget singUpButton() {
    return RaisedButton(
      color: Colors.pink[300],
      child: Text(
        'Sign Up',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        print('You SignUp');
        //create route
        var registerRoute =
            MaterialPageRoute(builder: (BuildContext context) => Register());
            Navigator.of(context).push(registerRoute);
      },
    );
  }

  Widget singInButton() {
    return RaisedButton(
        color: Colors.pink[400],
        child: Text(
          'Sign In',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {});
  }

  Widget myButton() {
    return Container(
      width: 220.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: singInButton(),
          ),
          mySizeBox(),
          Expanded(
            child: singUpButton(),
          )
        ],
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 220.0,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password : ', hintText: 'More 6 caractor'),
      ),
    );
  }

  Widget emailText() {
    return Container(
      width: 220.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration:
            InputDecoration(labelText: 'Email : ', hintText: 'you@email.com'),
      ),
    );
  }

  Widget showLogo() {
    return Container(
      width: mySize,
      height: mySize,
      child: Image.asset(
        'images/logo.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget showText() {
    return Text(
      'BROWN',
      style: TextStyle(fontSize: 40.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.white, Colors.pink[50]],
          begin: Alignment.topCenter,
        )),
        padding: EdgeInsets.only(top: 60.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showLogo(),
            showText(),
            emailText(),
            passwordText(),
            myButton()
          ],
        ),
      ),
    );
  }
}
