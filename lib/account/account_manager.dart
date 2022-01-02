import 'dart:io';

import 'package:dropship_client/account/samsung_android.dart';
import 'package:dropship_client/account/web.dart';

class AccountManager {
  bool isLogin(){ return false; }
  bool login(){ return false; }
  String? getAccessToken() { return null; }

  factory AccountManager.create() {
    try {
      if (Platform.isAndroid) {
        return SamsungAndroid();
      } else if (Platform.isIOS) {
        return IOS();
      }
    } catch (e) {
      return Web();
    }
    throw UnimplementedError();
  }
}


class NonSamsungAndroid implements AccountManager {
  @override
  String? getAccessToken() {
    // TODO: implement getAccessToken
    throw UnimplementedError();
  }

  @override
  bool isLogin() {
    // TODO: implement isLogin
    throw UnimplementedError();
  }

  @override
  bool login() {
    // TODO: implement login
    throw UnimplementedError();
  }

}


class IOS implements AccountManager {
  @override
  String? getAccessToken() {
    // TODO: implement getAccessToken
    throw UnimplementedError();
  }

  @override
  bool isLogin() {
    // TODO: implement isLogin
    throw UnimplementedError();
  }

  @override
  bool login() {
    // TODO: implement login
    throw UnimplementedError();
  }
}
