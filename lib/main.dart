import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildButtons(1, Colors.red),
                buildButtons(2, Colors.blue),
                buildButtons(3, Colors.yellow),
                buildButtons(4, Colors.green),
                buildButtons(5, Colors.amber),
                buildButtons(6, Colors.white),
                buildButtons(7, Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 Expanded buildButtons(int num, Color color){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: (){
        playSound(num);
      },
    ),
  );
}
void playSound(int note){
  final player = AudioCache();
  player.play("note$note.wav");
}
