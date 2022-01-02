import 'package:dropship_client/account/android_api.dart';

import 'account_manager.dart';

class SamsungAndroid implements AccountManager {
  static const _login_action = 'com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT';
  static const _access_action = 'com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN';

  @override
  String? getAccessToken() {
    // TODO: implement getAccessToken
    throw UnimplementedError();
  }

  @override
  bool isLogin() {
    return false;
  }

  @override
  Future<bool> login() async {
    var intent = Intent(_login_action);
    intent.putExtra("client_id", "45231pynzc");
    var result = intent.startActivityForResult().then((value) => true);
    return result;
  }
}
