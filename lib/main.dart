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
  void playSound(int sound) {
    AudioCache player = AudioCache();
    player.play('note$sound.wav');
  }

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
            TextButton(
              onPressed: () {
                playSound(1);
              },
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                width: double.infinity,
                height: 90,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(2);
              },
              child: Container(
                color: Colors.grey[800],
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 90,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(3);
              },
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 90,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(4);
              },
              child: Container(
                color: Colors.grey[800],
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 90,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(5);
              },
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 90,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(6);
              },
              child: Container(
                color: Colors.grey[800],
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 90,
              ),
            ),
            TextButton(
              onPressed: () {
                playSound(7);
              },
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 90,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
