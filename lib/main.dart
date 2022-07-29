import 'dart:math';
import 'package:flutter/material.dart';



void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text('dicee'),
          backgroundColor: Colors.black12,
        ),
        body: Dicepage(),
      ),
    ),
  );
}


class Dicepage extends StatefulWidget {

  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();

}
class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 5;
  int rightDiceNumber =5;
  void update(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {

                  update();
                },


              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(

            child: TextButton(
                onPressed: () {

                  update();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  }


