import 'package:flutter/material.dart';
import 'package:my_toku/component/item.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

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
          'Numbers',
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
                  image: 'assets/images/numbers/number_one.png',
                  jpName: '1つ',
                  enName: 'One',
                  sound: 'sounds/numbers/number_one_sound.mp3',
                ),
                item(
                  image: 'assets/images/numbers/number_two.png',
                  jpName: '弐つ',
                  enName: 'Two',
                  sound: 'sounds/numbers/number_two_sound.mp3',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/numbers/number_three.png',
                  jpName: '三つ',
                  enName: 'Three',
                  sound: 'sounds/numbers/number_three_sound.mp3',
                ),
                item(
                  image: 'assets/images/numbers/number_four.png',
                  jpName: '四',
                  enName: 'Four',
                  sound: 'sounds/numbers/number_four_sound.mp3',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/numbers/number_five.png',
                  jpName: '五',
                  enName: 'Five',
                  sound: 'sounds/numbers/number_five_sound.mp3',
                ),
                item(
                  image: 'assets/images/numbers/number_six.png',
                  jpName: '六',
                  enName: 'Six',
                  sound: 'sounds/numbers/number_six_sound.mp3',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/numbers/number_seven.png',
                  jpName: 'セブン',
                  enName: 'Seven',
                  sound: 'sounds/numbers/number_seven_sound.mp3',
                ),
                item(
                  image: 'assets/images/numbers/number_eight.png',
                  jpName: '八',
                  enName: 'Eight',
                  sound: 'sounds/numbers/number_eight_sound.mp3',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/numbers/number_nine.png',
                  jpName: '九',
                  enName: 'Nine',
                  sound: 'sounds/numbers/number_nine_sound.mp3',
                ),
                item(
                  image: 'assets/images/numbers/number_ten.png',
                  jpName: '十',
                  enName: 'Ten',
                  sound: 'sounds/numbers/number_ten_sound.mp3',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
