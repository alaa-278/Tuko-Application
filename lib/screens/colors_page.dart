import 'package:flutter/material.dart';
import 'package:learnme/components/list_item.dart';
import 'package:learnme/models/item.dart';

class ColorsPage extends StatelessWidget {
   ColorsPage({Key? key}) : super(key: key);

  List<Item> colorList = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black'),
    Item(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: '黄砂 (こうさ',
        enName: 'Dusty Yellow'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red'),
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Gure',
        enName: 'White'),
    Item(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kuro',
        enName: 'Yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurei',
        enName: 'Grey'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F1D1A),
        title: const Text(
          'Colors',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context,index) {
            return ListItem(item: colorList[index],color: Colors.lightBlue,itemType:'colors' ,);
          }

      ),
    );
  }
}
