import 'package:dropship_client/account/account_manager.dart';
import 'package:dropship_client/bloc/login_bloc.dart';
import 'package:dropship_client/bloc/login_state.dart';
import 'package:dropship_client/view/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(accountManager: AccountManager.create()),
      child: const ButtonLayout(),
    );
  }
}

class ButtonLayout extends StatelessWidget {
  const ButtonLayout({
    Key? key,
  }) : super(key: key);

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
          child: BlocBuilder<LoginBloc, LoginState> (
            builder: (_, state) {
              if (state is NotLogIn) {
                return Column(
                  children: <Widget>[
                    LoginIconButton(
                      'images/saicon.png',
                      'Login with Samsung',
                      onPressed: () {
                        context.read<LoginBloc>().login();
                      },
                    ),
                    const SizedBox(height: 10.0),
                    LoginIconButton(
                        'images/glogo.png',
                        'Login with Google',
                        onPressed: () {}
                    ),
                  ],
                );
              } else if (state is LoginProgress) {
                return Container();
              } else if (state is LoginCompleted) {
                return const Text(
                  "Login Success",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30.0
                  )
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      )
    );
  }
}
