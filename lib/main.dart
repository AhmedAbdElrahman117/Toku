import 'package:flutter/material.dart';
import 'package:my_toku/screens/Home.dart';

void main() {
  runApp(const My_Toku());
}

class My_Toku extends StatelessWidget {
  const My_Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape: const CircleBorder(
              side: BorderSide(
                strokeAlign: BorderSide.strokeAlignOutside,
                width: 25,
                color: Color(0xff00838F),
              ),
              eccentricity: 1),
          centerTitle: true,
          backgroundColor: Colors.cyan[800],
          foregroundColor: Colors.white,
          title: const Text(
            'Toku',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
        body: const Home(),
      ),
    );
  }
}
