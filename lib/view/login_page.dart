import 'package:dropship_client/account/samsung_login.dart';
import 'package:dropship_client/view/icon_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              LoginIconButton(
                'images/saicon.png',
                'Login with Samsung',
                onPressed: () {
                  var saSignInLauncher = SASignInLauncher()
                      ..saLogin();
                },
              ),
              const SizedBox(height: 10.0),
              LoginIconButton(
                'images/glogo.png',
                'Login with Google',
                 onPressed: () {}
              ),
            ],
          ),
        ),
      )
    );
  }
}
