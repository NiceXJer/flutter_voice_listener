#ifndef FLUTTER_PLUGIN_FLUTTER_VOICE_LISTENER_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_VOICE_LISTENER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_voice_listener {

class FlutterVoiceListenerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterVoiceListenerPlugin();

  virtual ~FlutterVoiceListenerPlugin();

  // Disallow copy and assign.
  FlutterVoiceListenerPlugin(const FlutterVoiceListenerPlugin&) = delete;
  FlutterVoiceListenerPlugin& operator=(const FlutterVoiceListenerPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_voice_listener

#endif  // FLUTTER_PLUGIN_FLUTTER_VOICE_LISTENER_PLUGIN_H_
