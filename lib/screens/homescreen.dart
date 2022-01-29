import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnme/components/categories.dart';
import 'package:learnme/screens/colors_page.dart';
import 'package:learnme/screens/family_members_page.dart';
import 'package:learnme/screens/numbers_page.dart';
import 'package:learnme/screens/phrases_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffbf0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F1D1A),
        title: const Text(
          'Toku',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          const Spacer(
            flex: 1,
          ),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
              text: 'Family Members',
              color: Colors.green),
          const Spacer(
            flex: 1,
          ),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
              text: 'Colors',
              color: Colors.lightBlueAccent),
          const Spacer(
            flex: 1,
          ),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: Colors.purple),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
