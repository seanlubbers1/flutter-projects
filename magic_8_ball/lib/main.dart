import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ), //AppBar
        backgroundColor: Colors.blue,
        body: Ball()
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({ super.key });

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                Random random = new Random();
                ballNumber = 1 + random.nextInt(5);
                // print("Ball Number is $ballNumber");
                print("ballNumber is $ballNumber");
              },
              child: Center(child: Image.asset('images/ball$ballNumber.png')),
            ),
            ),
        ],
      ),
    );
  }
}

