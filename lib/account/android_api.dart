import 'package:flutter/services.dart';

class Intent {
  static const MethodChannel _channel = MethodChannel('com.samsung.dropship/intent');

  Intent(this._action):_extra = {};

  final String _action;
  final Map<String, String> _extra;

  putExtra(String extra, String data) {
    _extra[extra] = data;
  }

  Future<List<String>> startActivityForResult() {
    Map<String, dynamic> parameters = {};
    parameters['action'] = _action;

    if (_extra.isNotEmpty) {
      parameters['extra'] = _extra;
    }

    return _channel
        .invokeMethod('startActivityForResult', parameters)
        //.then((data) => List<String>.from(data));
        .then((data) => ['sdsd']);
  }
}