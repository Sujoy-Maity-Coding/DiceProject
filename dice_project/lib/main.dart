import 'package:dice_project/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceGame());
}

class DiceGame extends StatelessWidget {
  const DiceGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
