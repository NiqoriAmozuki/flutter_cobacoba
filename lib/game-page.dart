import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PictureButton(textGambar: "GAMBAR 1"),
              PictureButton(textGambar: "GAMBAR 2"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PictureButton(textGambar: "GAMBAR 3"),
              PictureButton(textGambar: "GAMBAR 4"),
            ],
          ),
        ],
      ),
    );
  }
}

class PictureButton extends StatelessWidget {
  final String textGambar;

  PictureButton({this.textGambar});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          onPressed: () {
            print("You pressed $textGambar");
          },
          child: Text(textGambar),
          style: OutlinedButton.styleFrom(
              primary: Colors.black,
              minimumSize: Size(50, 150),
              side: BorderSide(width: 3),
              textStyle: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
