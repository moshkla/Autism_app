import 'dart:ui';

import 'package:Autism/screens/cards/main_cards/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CardItem extends StatelessWidget {
  final controller = CardsController();
  final name, image1, image2;

  CardItem({Key? key, this.name, this.image1, this.image2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/${image1}',
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              spreadRadius: -5,
              color: Colors.black12,
            ),
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/${image2}',
            height: 75,
            width: 75,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
