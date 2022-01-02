import 'account_manager.dart';
import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:url_launcher/url_launcher.dart';

class Web implements AccountManager {
  final authorizationUrl = Uri.parse('https://account.samsung.com/accounts/v1/dropship_client/signInGate');
  final clientID = '5il5jq9wex';
  final tokenEndpoint = Uri.parse('https://api.account.samsung.com/auth/oauth2/v2/token');
  final redirectUrl = Uri.parse('http://localhost:5000/redirect');

  @override
  String? getAccessToken() {
    // TODO: implement getAccessToken
    throw UnimplementedError();
  }

  @override
  bool isLogin() {
    // TODO: implement isLogin
    return false;
  }

  @override
  bool login() {
    var grant = oauth2.AuthorizationCodeGrant(clientID, authorizationUrl, tokenEndpoint);
    var oauthUrl = grant.getAuthorizationUrl(redirectUrl, state:'aaa');
    print("hmhm " + oauthUrl.toString());
    launch(oauthUrl.toString());
    return false;
  }
}
