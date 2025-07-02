import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildTile({Color color = Colors.white, int soundNumber = 0}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.brown,
                fontSize: 30,
              ),
            ),
          ),
          backgroundColor: Colors.grey[100],
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTile(color: Colors.red, soundNumber: 1),
                  buildTile(color: Colors.orange, soundNumber: 2),
                  buildTile(color: Colors.yellow, soundNumber: 3),
                  buildTile(color: Colors.green, soundNumber: 4),
                  buildTile(color: Colors.teal, soundNumber: 5),
                  buildTile(color: Colors.blue, soundNumber: 6),
                  buildTile(color: Colors.purple, soundNumber: 7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
