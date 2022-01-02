import 'package:dropship_client/view/login_page.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const String login = '/login';

  static final routes = <String, WidgetBuilder> {
    login : (_) => const LoginPage(),
  };
}