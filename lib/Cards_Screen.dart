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

  String card = '';
  String card2 = '';
  String card3 = '';

  void selectCards() {
    setState(() {
      card = cards[Random().nextInt(5)];
      card2 = cards[Random().nextInt(5)];
      card3 = cards[Random().nextInt(5)];

      if (card == '🃏' || card2 == '🃏' || card3 == '🃏') {
        result = 'The joker is in there';
      }
    });
  }

  void reset() {
    setState(() {
      card = '❓';
      card2 = '❓';
      card3 = '❓';
    });
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
                Text(card),
                SizedBox(width: 25),
                Text(card2),
                SizedBox(width: 25),
                Text(card3),
              ],
            ),
            Text(result),

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
