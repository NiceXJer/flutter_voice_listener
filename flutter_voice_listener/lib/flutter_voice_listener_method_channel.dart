import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_voice_listener_platform_interface.dart';

/// An implementation of [FlutterVoiceListenerPlatform] that uses method channels.
class MethodChannelFlutterVoiceListener extends FlutterVoiceListenerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_voice_listener');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
