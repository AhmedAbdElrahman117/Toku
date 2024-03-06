import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class item extends StatelessWidget {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const item(
      {super.key,
      this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: ElevatedButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(sound));
          },
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(125, 125),
              backgroundColor: Colors.cyan[800]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image!,
                width: 80,
              ),
              Text(
                jpName,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white),
              ),
              Text(
                enName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
