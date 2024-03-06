import 'package:flutter/material.dart';
import 'package:my_toku/component/item.dart';

class Colorss extends StatelessWidget {
  const Colorss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
          'Colors',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/download2.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/colors/color_black.png',
                  jpName: '黒',
                  enName: 'Black',
                  sound: 'sounds/colors/black.wav',
                ),
                item(
                  image: 'assets/images/colors/color_brown.png',
                  jpName: '茶色',
                  enName: 'Brown',
                  sound: 'sounds/colors/brown.wav',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/colors/color_dusty_yellow.png',
                  jpName: 'ダスティ',
                  enName: 'D Yellow',
                  sound: 'sounds/colors/dusty_yellow.wav',
                ),
                item(
                  image: 'assets/images/colors/color_gray.png',
                  jpName: 'グレー',
                  enName: 'Gray',
                  sound: 'sounds/colors/gray.wav',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/colors/color_green.png',
                  jpName: '緑',
                  enName: 'Green',
                  sound: 'sounds/colors/green.wav',
                ),
                item(
                  image: 'assets/images/colors/color_red.png',
                  jpName: '赤',
                  enName: 'Red',
                  sound: 'sounds/colors/red.wav',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/colors/color_white.png',
                  jpName: '白',
                  enName: 'White',
                  sound: 'sounds/colors/white.wav',
                ),
                item(
                  image: 'assets/images/colors/yellow.png',
                  jpName: '黄色',
                  enName: 'Yellow',
                  sound: 'sounds/colors/yellow.wav',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
