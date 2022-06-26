import 'package:Autism/helper/colors.dart';
import 'package:flutter/material.dart';

import '../controller.dart';

class Item extends StatelessWidget {
  final controller = LanguageController();

  final name;
  final correct;
  final lang;
  final press;
  final color;

  Item({this.name, this.correct, this.lang, this.press, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding:
          const EdgeInsets.only(right: 15, left: 15, bottom: 10, top: 10),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Color(0x80ffcce6),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  '$name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '$lang',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Spacer(),
              correct,
            ],
          ),
        ),
      ),
    );
  }
}

