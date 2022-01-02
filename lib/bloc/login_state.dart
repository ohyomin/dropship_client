import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {}

class NotLogIn extends LoginState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginProgress extends LoginState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Error extends LoginState {
  final String message;

  Error(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class LoginCompleted extends LoginState {
  final String id;
  LoginCompleted(this.id);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}