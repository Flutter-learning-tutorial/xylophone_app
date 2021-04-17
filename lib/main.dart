import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Xylophone'),
      ),
      body: Container(
        color: Colors.grey[400],
        child: Column(
          children: [
            getButton(color: Colors.orange, sound: 1),
            getButton(color: Colors.white, sound: 2),
            getButton(color: Colors.blue, sound: 3),
            getButton(color: Colors.red, sound: 4),
            getButton(color: Colors.yellow, sound: 5),
            getButton(color: Colors.green, sound: 6),
            getButton(color: Colors.purple, sound: 7),
          ],
        ),
      ),
    );
  }

  Expanded getButton({color: Color, sound: int}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
        onPressed: () {
          playSound(sound);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  void playSound(int sound) {
    AudioCache player = AudioCache();
    player.play('note$sound.wav');
  }
}
