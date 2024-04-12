import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          leading: const Icon(Icons.play_arrow_outlined),
          title: const Text('Xylophone'),
          backgroundColor: Colors.black12,
        ),
        body: Column(
          children: [
            MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note1.wav'));
              },
              color: Colors.red,
            ),
            MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note2.wav'));
              },
              color: Colors.orange,
            ),
            MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note3.wav'));
              },
              color: Colors.yellow,
            ),
            MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note4.wav'));
              },
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note5.wav'));
              },
              color: Colors.teal,
            ),
            MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note6.wav'));
              },
              color: Colors.blueGrey,
            ),
            MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note7.wav'));
              },
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
