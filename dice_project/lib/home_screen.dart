import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var leftDice=5;
  var rightDIce=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dice", style: TextStyle(fontSize: 30, fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red[300],
      body: Center(
        child: GestureDetector(
          onTap: (){
            var random1=Random().nextInt(5)+1;
            var random2=Random().nextInt(5)+1;
            setState(() {
              leftDice=random1;
              rightDIce=random2;
            });
          },
          child: Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice${leftDice}.png'),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice${rightDIce}.png'),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
