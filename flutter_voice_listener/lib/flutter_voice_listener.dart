
import 'flutter_voice_listener_platform_interface.dart';

class FlutterVoiceListener {
  Future<String?> getPlatformVersion() {
    return FlutterVoiceListenerPlatform.instance.getPlatformVersion();
  }
}
