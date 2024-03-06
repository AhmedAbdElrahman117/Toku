import 'package:flutter/material.dart';
import 'package:my_toku/component/PhrasesCont.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});

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
              eccentricity: 1.0),
          centerTitle: true,
          backgroundColor: Colors.cyan[800],
          foregroundColor: Colors.white,
          title: const Text(
            'Phrases',
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
            physics: const BouncingScrollPhysics(),
            children: const [
              PhrasesCont(
                  enName: 'Are You Coming',
                  jpName: '来ますか',
                  sound: 'sounds/phrases/are_you_coming.wav'),
              PhrasesCont(
                  enName: 'Don\'t Forget To Subscribe',
                  jpName: '忘れずに購読してください',
                  sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
              PhrasesCont(
                  enName: 'How Are You Feeling',
                  jpName: 'ご気分はいかがですか',
                  sound: 'sounds/phrases/how_are_you_feeling.wav'),
              PhrasesCont(
                  enName: 'I Love Anime',
                  jpName: '私はアニメが大好きです',
                  sound: 'sounds/phrases/i_love_anime.wav'),
              PhrasesCont(
                  enName: 'I Love Programming',
                  jpName: 'プログラミングが大好き',
                  sound: 'sounds/phrases/i_love_programming.wav'),
              PhrasesCont(
                  enName: 'Programming I\'s Easy',
                  jpName: 'プログラミングは簡単です',
                  sound: 'sounds/phrases/programming_is_easy.wav'),
              PhrasesCont(
                  enName: 'What\'s Your Name',
                  jpName: 'あなたの名前は何ですか',
                  sound: 'sounds/phrases/what_is_your_name.wav'),
              PhrasesCont(
                  enName: 'Where Are You Going',
                  jpName: 'どこに行くの',
                  sound: 'sounds/phrases/where_are_you_going.wav'),
              PhrasesCont(
                  enName: 'Yes I\'m Coming',
                  jpName: 'はい、行きます',
                  sound: 'sounds/phrases/yes_im_coming.wav'),
            ],
          ),
        ));
  }
}
