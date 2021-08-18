import Flutter
import UIKit

public class SwiftFlutterVideoCastNullsafetyPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_video_cast_nullsafety", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterVideoCastNullsafetyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    let factory = AirPlayFactory(registrar: registrar)
    let chromeCastFactory = ChromeCastFactory(registrar: registrar)
    registrar.register(factory, withId: "AirPlayButton")
    registrar.register(chromeCastFactory, withId: "ChromeCastButton")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
