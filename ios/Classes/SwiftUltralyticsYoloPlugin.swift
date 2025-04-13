import Flutter
import UIKit

public class SwiftUltralyticsYoloPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
      let videoCapture = VideoCapture()
      
      let channel = FlutterMethodChannel(name: "ultralytics_flutter", binaryMessenger: registrar.messenger())
      let methodHandler = MethodCallHandler(binaryMessenger: registrar.messenger(), videoCapture: videoCapture)
      channel.setMethodCallHandler(methodHandler.handle)
          
      registrar.register(FLNativeViewFactory(videoCapture: videoCapture), withId: "ultralytics_flutter_camera_preview")
  }
}
