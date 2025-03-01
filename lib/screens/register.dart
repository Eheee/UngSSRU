import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //Explicit
  final formKey = GlobalKey<FormState>();
  String nameString,emailString,passwordString;

  //Method

  Widget nameText() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: ('Name : '),
        labelStyle: TextStyle(color: Colors.pink[300]),
        helperText: 'Type Display Name',
        helperStyle: TextStyle(color: Colors.pink[400]),
        icon: Icon(
          Icons.favorite,
          size: 36.0,
          color: Colors.pink[300],
        ),
      ),validator: (String value){
        if (value.isEmpty) {
          return'Please Fill Name In Blank';
          
        }
      },onSaved: (String value){
        nameString = value;
      },
    );
  }

  Widget emailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: ('Email : '),
        labelStyle: TextStyle(color: Colors.pink[300]),
        helperText: 'Type Display Email',
        helperStyle: TextStyle(color: Colors.pink[300]),
        icon: Icon(
          Icons.lock,
          size: 36.0,
          color: Colors.pink[300],
        ),
      ),validator: (String value){
        if (!((value.contains('@'))&&(value.contains('.')))) {
          return'Type Email Format';
          
        }
      },onSaved: (String value){
        emailString = value;
      },
    );
  }

  Widget passText() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: ('Password : '),
        labelStyle: TextStyle(color: Colors.pink[300]),
        helperText: 'Type Display Password',
        helperStyle: TextStyle(color: Colors.pink[300]),
        icon: Icon(
          Icons.lock_open,
          size: 36.0,
          color: Colors.pink[300],
        ),
      ),validator: (String value){
        if (value.length<=5) {
          return'Pass Much More 6 Charactor';
          
        }
      },onSaved: (String value){
        passwordString = value;
      },
    );
  }

  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('Upload');
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Name = $nameString,Email = $emailString,Pass = $passwordString');
          
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Text('Register'),
        actions: <Widget>[uploadButton()],
      ),
      body: Form(key: formKey,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'), fit: BoxFit.cover),
          ),
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 60.0),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration:
                BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0.7)),
            width: 300.0,
            height: 300.0,
            child: Column(
              children: <Widget>[
                nameText(),
                emailText(),
                passText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
