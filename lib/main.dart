import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Ask me anything',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => __BallPageState();
}

class __BallPageState extends State<BallPage> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          child: Image.asset('images/ball$ballno.png'),
          onPressed: () {
            setState(() {
              ballno = Random().nextInt(5) + 1;
            });
      },
    ));
  }
}
