import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded bildKey ({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                bildKey(color: Colors.red, soundNumber: 1),
                bildKey(color: Colors.yellow, soundNumber: 2),
                bildKey(color: Colors.pink, soundNumber: 3),
                bildKey(color: Colors.greenAccent, soundNumber: 4),
                bildKey(color: Colors.blueGrey, soundNumber: 5),
                bildKey(color: Colors.blue, soundNumber: 6),
                bildKey(color: Colors.orange, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
