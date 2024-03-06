import 'package:flutter/material.dart';
import 'package:my_toku/component/item.dart';

class Family extends StatelessWidget {
  const Family({super.key});

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
          'Family',
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
                  image: 'assets/images/family_members/family_father.png',
                  jpName: '父親',
                  enName: 'Father',
                  sound: 'sounds/family_members/father.wav',
                ),
                item(
                  image: 'assets/images/family_members/family_grandfather.png',
                  jpName: '祖父',
                  enName: 'G Father',
                  sound: 'sounds/family_members/grand_father.wav',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/family_members/family_mother.png',
                  jpName: '母親',
                  enName: 'Mother',
                  sound: 'sounds/family_members/mother.wav',
                ),
                item(
                  image: 'assets/images/family_members/family_grandmother.png',
                  jpName: '祖母',
                  enName: 'G Mother',
                  sound: 'sounds/family_members/grand_mother.wav',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/family_members/family_daughter.png',
                  jpName: '娘',
                  enName: 'Daughter',
                  sound: 'sounds/family_members/daughter.wav',
                ),
                item(
                  image: 'assets/images/family_members/family_son.png',
                  jpName: '息子',
                  enName: 'Son',
                  sound: 'sounds/family_members/son.wav',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image: 'assets/images/family_members/family_older_sister.png',
                  jpName: '姉',
                  enName: 'Old Sister',
                  sound: 'sounds/family_members/older_sister.wav',
                ),
                item(
                  image:
                      'assets/images/family_members/family_older_brother.png',
                  jpName: '兄さん',
                  enName: 'Old Brother',
                  sound: 'sounds/family_members/older_bother.wav',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  image:
                      'assets/images/family_members/family_younger_sister.png',
                  jpName: '妹',
                  enName: 'Young Sis',
                  sound: 'sounds/family_members/younger_sister.wav',
                ),
                item(
                  image:
                      'assets/images/family_members/family_younger_brother.png',
                  jpName: '弟',
                  enName: 'Young Bro',
                  sound: 'sounds/family_members/younger_brohter.wav',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
