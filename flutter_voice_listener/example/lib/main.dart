import 'package:flutter/material.dart';
import 'package:flutter_voice_listener/flutter_voice_listener.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String recognizedText = "Listening...";

  @override
  void initState() {
    super.initState();
    _requestPermission();
  }

  Future<void> _requestPermission() async {
    var status = await Permission.microphone.request();
    if (status.isGranted) {
      print("Permission granted, starting recognition...");
      FlutterVoiceListener.initRecognition((text) {
        setState(() {
          recognizedText = text;
        });
      });
    } else {
      setState(() {
        recognizedText = "Microphone permission needed.";
      });
    }
  }

  void startListening() {
    FlutterVoiceListener.startListening();
  }

  void stopListening() {
    FlutterVoiceListener.stopListening();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Real-Time Speech Recognition")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: startListening,
              icon: const Icon(Icons.mic, size: 40),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(recognizedText, style: TextStyle(fontSize: 20)),
            ),
            IconButton(
              onPressed: stopListening,
              icon: const Icon(Icons.stop, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
