import 'package:dropship_client/view/login_page.dart';
import 'package:dropship_client/view/saoauth_redirect.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const String login = '/login';
  static const String oauth_redirect = '/redirect';

  static final routes = <String, WidgetBuilder> {
    login : (_) => const LoginPage(),
    oauth_redirect : (_) => const SARedirectPage(),
  };
}