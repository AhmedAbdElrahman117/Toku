import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String image;
  final String jpName;
  final String enName;
  final Function() onTap;

  const Menu(
      {super.key,
      required this.image,
      required this.jpName,
      required this.enName,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 30),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan[800],
            fixedSize: const Size(125, 125),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              scale: 0.5,
              alignment: Alignment.topCenter,
              color: Colors.white,
            ),
            Text(
              jpName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
            ),
            Text(
              enName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
