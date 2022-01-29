import 'package:flutter/material.dart';
import 'package:learnme/components/list_item.dart';
import 'package:learnme/models/item.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({Key? key}) : super(key: key);
  @override
  _NumbersPageState createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List<Item> numberList = const [
    Item(
        sound: 'number_one_sound.wav',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'One'),
    Item(
        sound: 'number_two_sound.wav',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two'),
    Item(
        sound: 'number_three_sound.wav',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'Ssn',
        enName: 'Three'),
    Item(
        sound: 'number_four_sound.wav',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four'),
    Item(
        sound: 'number_five_sound.wav',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five'),
    Item(
        sound: 'number_six_sound.wav',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six'),
    Item(
        sound: 'number_seven_sound.wav',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'Seven'),
    Item(
        sound: 'number_eight_sound.wav',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'Eight'),
    Item(
        sound: 'number_nine_sound.wav',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'Nine'),
    Item(
        sound: 'number_ten_sound.wav',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'Ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F1D1A),
        title: const Text(
          'Numbers',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.builder(
          itemCount: numberList.length,
          itemBuilder: (context, index) {
            return ListItem(item: numberList[index],color: Colors.orange,itemType:'numbers' ,);
          }),
    );
  }
  // List<Widget>getList(List<Number> numberList){
  //             List<Widget>itemsList=[];
  //             for(int i =0;i<numberList.length;i++){
  //               itemsList.add(Item(number: numberList[i]));
  //             }
  //             return itemsList;
  // }
}
