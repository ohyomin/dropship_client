import 'package:dropship_client/account/account_manager.dart';
import 'package:dropship_client/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Cubit<LoginState> {
  final AccountManager accountManager;

  LoginBloc({required this.accountManager}) : super(NotLogIn());

  login() async {
    emit(LoginProgress());

    var result = await accountManager.login();

    emit(LoginCompleted('test'));
  }
}