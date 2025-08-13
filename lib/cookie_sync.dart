import 'package:flutter/services.dart';

abstract interface class CookieSync {
  factory CookieSync() = _CookieSync;

  /// Forces all cookies in memory to be written to persistent storage.
  Future<void> syncCookies();
}

final class _CookieSync implements CookieSync {
  _CookieSync() : this._(MethodChannel('cookie_sync'));

  _CookieSync._(this._channel);

  final MethodChannel _channel;

  Future<void> syncCookies() async {
    await _channel.invokeMethod('syncCookies');
  }
}
