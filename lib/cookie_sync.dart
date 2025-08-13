import 'package:flutter/services.dart';

class CookieSync {
  static const MethodChannel _channel = MethodChannel('cookie_sync');

  /// Forces all cookies in memory to be written to persistent storage.
  Future<void> syncCookies() async {
    await _channel.invokeMethod('syncCookies');
  }
}
