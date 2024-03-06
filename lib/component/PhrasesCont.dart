import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesCont extends StatelessWidget {
  final String enName;
  final String jpName;
  final String sound;
  const PhrasesCont(
      {super.key,
      required this.enName,
      required this.jpName,
      required this.sound});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
      child: ElevatedButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource(sound));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan[800], fixedSize: const Size(320, 70)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              enName,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              jpName,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
