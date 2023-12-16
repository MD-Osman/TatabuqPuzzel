import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("TatabuQ"),
          backgroundColor: Colors.indigo[800],
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;
  int x = 0;
  void ChangeImage() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber ? 'Congrats!' '\n point : ${++x}' : 'Try again' '\n point : $x',
          style: const TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(
                      () {
                        ChangeImage();
                      },
                    );
                  },
                  child: Image(
                    image: AssetImage('images/image-$leftImageNumber.png'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(
                      () {
                        ChangeImage();
                      },
                    );
                  },
                  child: Image(
                    image: AssetImage('images/image-$rightImageNumber.png'),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
