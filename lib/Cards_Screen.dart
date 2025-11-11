import 'package:flutter/material.dart';
import 'dart:math';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  List<String> cards = ['♣', '♠', '♥', '♦', '🃏'];
  String Questions = '❓ ❓ ❓';

  String result = '';
  List<String> Cards = [
    Questions = cards[Random().nextInt(5)],
    Questions = cards[Random().nextInt(5)],
    Questions = cards[Random().nextInt(5)],
  ];
  void selectCards() {
    setState(() {
      if (Questions == '🃏' || Questions == '🃏' || Questions == '🃏') {
        result = 'The joker is in there';
      }
    });
  }

  void reset() {
    String Questions = '❓ ❓ ❓';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Cards[0]),
                SizedBox(width: 25),
                Text(Cards[1]),
                SizedBox(width: 25),
                Text(Cards[2]),
              ],
            ),

            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: selectCards,
              child: Text(
                'select Cards',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 35),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
              ),
              onPressed: reset,
              child: Text('Reset', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
