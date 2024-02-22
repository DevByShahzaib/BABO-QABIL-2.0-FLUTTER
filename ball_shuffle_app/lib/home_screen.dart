import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String images = 'assets/images/ball1.png';
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 102, 199, 244),
      appBar: AppBar(title: Text('Ask Me Anything')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/ball${answer.toString()}.png"),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    final random = Random();
                    answer = random.nextInt(5) + 1;
                    setState(() {});
                  },
                  child: Text('Ask')),
            )
          ],
        ),
      ),
    );
  }
}
