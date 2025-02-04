import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_voice_listener_method_channel.dart';

abstract class FlutterVoiceListenerPlatform extends PlatformInterface {
  /// Constructs a FlutterVoiceListenerPlatform.
  FlutterVoiceListenerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterVoiceListenerPlatform _instance = MethodChannelFlutterVoiceListener();

  /// The default instance of [FlutterVoiceListenerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterVoiceListener].
  static FlutterVoiceListenerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterVoiceListenerPlatform] when
  /// they register themselves.
  static set instance(FlutterVoiceListenerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
