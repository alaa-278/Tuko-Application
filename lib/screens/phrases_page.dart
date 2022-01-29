import 'package:flutter/material.dart';
import 'package:learnme/components/list_item.dart';
import 'package:learnme/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Item> phraseList = const [

      Item(
           sound: 'are_you_coming.wav',
           jpName: '来ますか？',
           enName: 'Are You Coming?',
      ),
      Item(
           sound: 'dont_forget_to_subscribe.wav',
           jpName: '購読することを忘れないでください！',
           enName: 'Dont forget to subscribe!'),

      Item(
           sound: 'how_are_you_feeling.wav',
           jpName: 'ご気分はいかがですか？',
           enName: 'How are you feeling?'),

      Item(sound: 'where_are_you_going.wav',
           jpName: 'どこに行くの？',
           enName: 'Where are you going?'),

      Item(sound: 'i_love_anime.wav',
           jpName: '私はアニメが大好きです ：）',
           enName: 'I love Anime :) '),

      Item(sound: 'i_love_programming.wav',
           jpName: '私はプログラミングが大好きです。',
           enName: 'I love programming.'),

      Item(sound: 'programming_is_easy.wav',
           jpName: 'プログラミングは簡単です。',
           enName: 'Programming is easy.'),

      Item(sound: 'yes_im_coming.wav',
           jpName: 'はい、来ます。',
           enName: 'Yes I am coming.'),
    ];
    print(phraseList[0].enName);
    return Scaffold(

        appBar: AppBar(
          backgroundColor: const Color(0xFF2F1D1A),
          title: const Text(
            'Phrases',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView.builder(
            itemCount: phraseList.length,
            itemBuilder: (context, index) {
              return PhraseItem(
                phrase: phraseList[index],
                color: Colors.purple,
                itemType: 'phrases',
              );

            })

    );
  }
}
