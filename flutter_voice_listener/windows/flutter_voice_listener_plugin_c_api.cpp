#include "include/flutter_voice_listener/flutter_voice_listener_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_voice_listener_plugin.h"

void FlutterVoiceListenerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_voice_listener::FlutterVoiceListenerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
