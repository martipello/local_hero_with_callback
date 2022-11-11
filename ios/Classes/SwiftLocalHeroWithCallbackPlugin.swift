import Flutter
import UIKit

public class SwiftLocalHeroWithCallbackPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "local_hero_with_callback_with_callback_with_callback", binaryMessenger: registrar.messenger())
    let instance = SwiftLocalHeroWithCallbackPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
