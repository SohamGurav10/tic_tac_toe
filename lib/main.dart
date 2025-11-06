import 'package:flutter/material.dart';
import 'package:tic_tac_toe/pages/home_page.dart';

void main() {
  runApp(const TicTacToe());
}

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TicTacToe',
      home: const HomePage(title: 'Tic Tac Toe'),
    );
  }
}

