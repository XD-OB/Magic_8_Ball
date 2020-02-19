import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade700,
          title: Text('Magic 8 Ball'),
        ),
        body: Container(
          color: Colors.cyan,
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Ask me anything!',
                style: TextStyle(
                  color: Colors.cyan.shade900,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              MagicBall(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 20.0,
          color: Colors.cyan.shade700,
          child: Center(
            child: Text(
              'Created by: obelouch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int posNbr = 3;

  void  changeAnswer(){
    setState((){
      posNbr = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () => changeAnswer(),
        child: Image.asset('images/ball$posNbr.png'),
      ),
    );
  }
}