import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());


class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  const XylophoneApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () async {
                      playSound(1);
                    },
                    child: const Text(' ')
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () async {
                    playSound(2);
                  },
                  child: const Text(' '),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.yellowAccent),
                  onPressed: () async {
                    playSound(3);
                  },
                  child: const Text(' '),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () async {
                    playSound(4);
                  },
                  child: const Text(' '),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.teal),
                  onPressed: () async {
                    playSound(5);
                  },
                  child: const Text(' '),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () async {
                    playSound(6);
                  },
                  child: const Text(' '),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () async {
                    playSound(7);
                  },
                  child: const Text(' '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}