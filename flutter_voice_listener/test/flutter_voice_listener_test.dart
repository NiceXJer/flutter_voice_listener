// import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter_voice_listener/flutter_voice_listener.dart';
// import 'package:flutter_voice_listener/flutter_voice_listener_platform_interface.dart';
// import 'package:flutter_voice_listener/flutter_voice_listener_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockFlutterVoiceListenerPlatform
//     with MockPlatformInterfaceMixin
//     implements FlutterVoiceListenerPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final FlutterVoiceListenerPlatform initialPlatform = FlutterVoiceListenerPlatform.instance;

//   test('$MethodChannelFlutterVoiceListener is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelFlutterVoiceListener>());
//   });

//   test('getPlatformVersion', () async {
//     FlutterVoiceListener flutterVoiceListenerPlugin = FlutterVoiceListener();
//     MockFlutterVoiceListenerPlatform fakePlatform = MockFlutterVoiceListenerPlatform();
//     FlutterVoiceListenerPlatform.instance = fakePlatform;

//     expect(await flutterVoiceListenerPlugin.getPlatformVersion(), '42');
//   });
// }
