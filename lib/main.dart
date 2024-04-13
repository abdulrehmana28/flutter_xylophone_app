import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildButton({required int soundNumber, required Color colorName}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: colorName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          leading: const Icon(Icons.library_music),
          title: const Text('Xylophone'),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildButton(soundNumber: 1, colorName: Colors.red),
            buildButton(soundNumber: 2, colorName: Colors.orange),
            buildButton(soundNumber: 3, colorName: Colors.yellow),
            buildButton(soundNumber: 4, colorName: Colors.green),
            buildButton(soundNumber: 5, colorName: Colors.teal),
            buildButton(soundNumber: 6, colorName: Colors.blueGrey),
            buildButton(soundNumber: 7, colorName: Colors.purple),
          ],
        ),
      ),
    );
  }
}
