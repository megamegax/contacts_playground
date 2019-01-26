import 'package:contacts_playground/page/login/app_logo.dart';
import 'package:contacts_playground/page/login/input_password.dart';
import 'package:contacts_playground/page/login/input_username.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          AppLogo(),
          InputUsername(),
          InputPassword(),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/app");
                },
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  "Google Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/app");
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
