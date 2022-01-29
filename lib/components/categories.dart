import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({this.onTap,this.text,this.color});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shadowColor: const Color(0xFF2F1D1A),
          child: Container(
            color:color!,
            height: 150,
            width: 250,
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(text!,style: const TextStyle(color: Colors.white,fontSize: 25),)),
            ),
          ),
        ),
      ),

    );

  }
}

