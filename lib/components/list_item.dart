import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learnme/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.item,
      required this.color,
      required this.itemType
      })
      : super(key: key);
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xFFFFFF6DC), child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(item.enName,
                    style: const TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(item.sound);
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {Key? key,
      required this.color,
      required this.itemType,
      required this.phrase})
      : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(phrase.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
