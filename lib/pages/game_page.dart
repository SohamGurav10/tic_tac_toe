import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  final String title;
  GamePage({super.key, required this.title});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int counter = 0;
  List marked = ['', '', '', '', '', '', '', '', ''];

  void _tapped(int index) {
    setState(() {
      if (marked[index] == '') {
        if (counter % 2 == 0) {
          marked[index] = 'X';
          counter++;
        } else {
          marked[index] = 'O';
          counter++;
        }
      }
    });
  }

  void checkWinner(){
    
  }

  void showWinDialog(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _tapped(index);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.brown,
              ),
              child: Center(
                child: Text(
                  marked[index],
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
