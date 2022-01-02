import 'package:flutter/services.dart';

class SASignInLauncher {
  static const SALogin = MethodChannel('com.samsung.dropship_client/login');

  void saLogin() {
    try {
      SALogin.invokeMethod("login");
    } on PlatformException catch (e) {
      print(e);
    }
  }
}