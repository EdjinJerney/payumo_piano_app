//Project of Edjin Jerney Payumo
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(PianoApp());

class PianoApp extends StatelessWidget {
  void playSound(String soundKey) {
    final player = AudioPlayer();
    player.play(AssetSource('$soundKey.wav'));
  }

  Widget buildKey(
      {required Color keyColor,
      Color? textColor,
      required String soundKey,
      required String keyNote}) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 50,
        child: OutlinedButton(
          style: ButtonStyle(
            side: MaterialStateProperty.resolveWith<BorderSide>((states) {
              return BorderSide(width: 1.5);
            }),
            overlayColor: MaterialStateProperty.resolveWith<Color>((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.grey.withOpacity(0.5);
              }
              return Colors.transparent;
            }),
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              return keyColor;
            }),
          ),
          onPressed: () {
            playSound(soundKey);
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Transform.rotate(
              angle: 1.5708,
              child: Text(
                keyNote,
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Text("Payumo - Piano App"),
        ),
        backgroundColor: Colors.white24,
        body: SafeArea(
          child: Container(
            color: Colors.white24,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.all(30),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    buildKey(
                        keyColor: Colors.white,
                        textColor: Colors.black,
                        soundKey: 'c1',
                        keyNote: "C"),
                    buildKey(
                        keyColor: Colors.white,
                        textColor: Colors.black,
                        soundKey: 'd1',
                        keyNote: "D"),
                    buildKey(
                        keyColor: Colors.white,
                        textColor: Colors.black,
                        soundKey: 'e1',
                        keyNote: "E"),
                    buildKey(
                        keyColor: Colors.white,
                        textColor: Colors.black,
                        soundKey: 'f1',
                        keyNote: "F"),
                    buildKey(
                        keyColor: Colors.white,
                        textColor: Colors.black,
                        soundKey: 'g1',
                        keyNote: "G"),
                    buildKey(
                        keyColor: Colors.white,
                        textColor: Colors.black,
                        soundKey: 'a1',
                        keyNote: "A"),
                    buildKey(
                        keyColor: Colors.white,
                        textColor: Colors.black,
                        soundKey: 'b1',
                        keyNote: "B"),
                    buildKey(
                        keyColor: Colors.white,
                        textColor: Colors.black,
                        soundKey: 'c2',
                        keyNote: "C"),
                  ],
                ),
                Positioned(
                  top: 65,
                  left: 100,
                  right: 00,
                  bottom: 150,
                  child: Column(
                    children: <Widget>[
                      buildKey(
                          keyColor: Colors.black,
                          textColor: Colors.white,
                          soundKey: 'c1s',
                          keyNote: "C#"),
                      Expanded(child: SizedBox()),
                      buildKey(
                          keyColor: Colors.black,
                          textColor: Colors.white,
                          soundKey: 'd1s',
                          keyNote: "D#"),
                      Expanded(child: SizedBox()),
                      Expanded(child: SizedBox()),
                      Expanded(child: SizedBox()),
                      buildKey(
                          keyColor: Colors.black,
                          textColor: Colors.white,
                          soundKey: 'f1s',
                          keyNote: "F#"),
                      Expanded(child: SizedBox()),
                      buildKey(
                          keyColor: Colors.black,
                          textColor: Colors.white,
                          soundKey: 'g1s',
                          keyNote: "G#"),
                      Expanded(child: SizedBox()),
                      buildKey(
                          keyColor: Colors.black,
                          textColor: Colors.white,
                          soundKey: 'a1s',
                          keyNote: "A#"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
