// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_toku/component/Menu.dart';
import 'package:my_toku/screens/Colors.dart';
import 'package:my_toku/screens/Family.dart';
import 'package:my_toku/screens/Numbers.dart';
import 'package:my_toku/screens/Phrases.dart';
import 'package:quickalert/quickalert.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Menu(
                image: 'assets/number.png',
                jpName: '絵の具',
                enName: 'Numbers',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return const Numbers();
                  }));
                },
              ),
              Menu(
                image: 'assets/family.png',
                jpName: '家族',
                enName: 'Family',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return const Family();
                  }));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Menu(
                image: 'assets/color.png',
                jpName: 'カラー',
                enName: 'Colors',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return const Colorss();
                  }));
                },
              ),
              Menu(
                image: 'assets/phrases.png',
                jpName: 'フレーズ',
                enName: 'Phrases',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return const Phrases();
                  }));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Menu(
                image: 'assets/verbs.png',
                jpName: '動詞',
                enName: 'Verbs',
                onTap: () {
                  QuickAlert.show(
                    title: 'Not Available',
                    text: 'Upcoming Updates',
                    context: context,
                    type: QuickAlertType.loading,
                  );
                },
              ),
              Menu(
                image: 'assets/animal.png',
                jpName: '動物',
                enName: 'Animals',
                onTap: () {
                  QuickAlert.show(
                    title: 'Not Available',
                    text: 'Upcoming Updates',
                    context: context,
                    type: QuickAlertType.loading,
                    animType: QuickAlertAnimType.scale,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
