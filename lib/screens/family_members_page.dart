import 'package:flutter/material.dart';
import 'package:learnme/components/list_item.dart';
import 'package:learnme/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<Item> familyList = const [
      Item(
          sound: 'grand father.wav',
          image: 'assets/images/family_members/family_grandfather.png',
          jpName: 'Ojisan',
          enName: 'Grand Father'),
      Item(
          sound: 'grand mother.wav',
          image: 'assets/images/family_members/family_grandmother.png',
          jpName: 'Sobo',
          enName: 'Grand Mother'),
      Item(
          sound: 'father.wav',
          image: 'assets/images/family_members/family_father.png',
          jpName: 'Chichioya',
          enName: 'Father'),
      Item(
          sound: 'mother.wav',
          image: 'assets/images/family_members/family_mother.png',
          jpName: 'Hahaoya',
          enName: 'Mother'),
      Item(
          sound: 'older bother.wav',
          image: 'assets/images/family_members/family_older_brother.png',
          jpName: 'Nisan',
          enName: 'Older Brother'),
      Item(
          sound: 'older sister.wav',
          image: 'assets/images/family_members/family_older_sister.png',
          jpName: 'Ane',
          enName: 'Older Sister'),
      Item(
          sound: 'younger brohter.wav',
          image: 'assets/images/family_members/family_younger_brother.png',
          jpName: 'Otouto',
          enName: 'Younger Brother'),
      Item(
          sound: 'younger sister.wav',
          image: 'assets/images/family_members/family_younger_sister.png',
          jpName: 'Imouto',
          enName: 'Younger Sister'),
      Item(
          sound: 'son.wav',
          image: 'assets/images/family_members/family_son.png',
          jpName: 'Musukp',
          enName: 'Son'),
      Item(
          sound: 'daughter.wav',
          image: 'assets/images/family_members/family_daughter.png',
          jpName: 'Onna No Ko',
          enName: 'Daughter'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F1D1A),
        title: const Text(
          'Family Members',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.builder(
          itemCount: familyList.length,
          itemBuilder: (context, index) {
            return ListItem(item: familyList[index],color: Colors.green,itemType: 'family_members',);
          }),
    );
  }
}
