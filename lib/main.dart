import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Widget soundButton({int index = 1, Color bgColor = Colors.blue}) => Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
          ),
          onPressed: () {
            final player = AudioPlayer();
            player.play(
              AssetSource('note$index.wav'),
            );
          },
          child: const Text(''),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundButton(index: 1, bgColor: Colors.blue),
              soundButton(index: 2, bgColor: Colors.red),
              soundButton(index: 3, bgColor: Colors.yellow),
              soundButton(index: 4, bgColor: Colors.green),
              soundButton(index: 5, bgColor: Colors.purple),
              soundButton(index: 6, bgColor: Colors.brown),
              soundButton(index: 7, bgColor: Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}
