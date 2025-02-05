import 'package:flutter/services.dart';

class FlutterVoiceListener {
  static const MethodChannel _channel = MethodChannel('flutter_voice_listener');
  static Function(String)? onTextRecognized;

  static void initRecognition(Function(String) callback) {
    onTextRecognized = callback;
    _channel.setMethodCallHandler((call) async {
      if (call.method == "recognizedWords") {
        final String text = call.arguments;
        print("Recognized: $text");
        if (onTextRecognized != null) {
          onTextRecognized!(text);
        }
      }
    });
  }

  static Future<void> startListening() async {
    await _channel.invokeMethod('startListening');
  }

  static Future<void> stopListening() async {
    await _channel.invokeMethod('stopListening');
  }
}
