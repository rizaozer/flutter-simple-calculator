import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Widget customOutlineButton(String value) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(7),
        child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 1.5),
        ),
        onPressed: () {}, // I will add functionality here
      child: Text(
        value,
        style: const TextStyle(fontSize: 25),
      ),
    ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Column(
        children: [
          Expanded(child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomRight,
            child: const Text(
              "0",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),
            ),
          ),),
          Row(
          children: [
          customOutlineButton("AC"),
          customOutlineButton("C"),
          customOutlineButton("%"),
          customOutlineButton("/"),
          ],
          ),
          Row(
            children: [
              customOutlineButton("9"),
              customOutlineButton("8"),
              customOutlineButton("7"),
              customOutlineButton("+"),
            ],
          ),
          Row(
            children: [
              customOutlineButton("4"),
              customOutlineButton("5"),
              customOutlineButton("6"),
              customOutlineButton("-"),
            ],
          ),
          Row(
            children: [
              customOutlineButton("1"),
              customOutlineButton("2"),
              customOutlineButton("3"),
              customOutlineButton("x"),
            ],
          ),
          Row(
            children: [
              customOutlineButton("("),
              customOutlineButton("0"),
              customOutlineButton(")"),
              customOutlineButton("="),
            ],
          )
        ],
      ),
    );
  }
}
