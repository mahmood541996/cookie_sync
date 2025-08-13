import Flutter
import UIKit
import WebKit

public class CookieSyncPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "cookie_sync", binaryMessenger: registrar.messenger())
    let instance = CookieSyncPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "syncCookies" {
      // iOS commits cookies instantly, so no action needed
      result(nil)
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
