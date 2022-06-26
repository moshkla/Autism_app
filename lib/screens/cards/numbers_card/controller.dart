import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumbersController with ChangeNotifier {
  List<CardItem> numberCardItem = [
    CardItem(
      id: 1,
      image: "0.png",
      name: "zero",
    ),
    CardItem(
      id: 2,
      image: "1.png",
      name: "one",
    ),
    CardItem(
      id: 3,
      image: "2.png",
      name: "two",
    ),
    CardItem(
      id: 4,
      image: "3.png",
      name: "three",
    ),
    CardItem(
      id: 5,
      image: "4.png",
      name: "four",
    ),
    CardItem(
      id: 6,
      image: "5.png",
      name: "five",
    ),
    CardItem(
      id: 7,
      image: "6.png",
      name: "six",
    ),
    CardItem(
      id: 8,
      image: "7.png",
      name: "seven",
    ),
    CardItem(
      id: 9,
      image: "8.png",
      name: "eight",
    ),
    CardItem(
      id: 10,
      image: "9.png",
      name: "nine",
    ),
  ];

}

// class CardItem {
//   final int id;
//   final String name, image;
//
//   CardItem({
//     required this.id,
//     required this.name,
//     required this.image,
//   });
// }

// List<String> cardsImage = [
//   '0.png',
//   '1.png',
//   '2.png',
//   '3.png',
//   '4.png',
//   '5.png',
//   '6.png',
//   '7.png',
//   '8.png',
//   '9.png',
// ];
// List<String> cardsName = [
//   'zero',
//   'one',
//   'two',
//   'three',
//   'four',
//   'five',
//   'six',
//   'seven',
//   'eight',
//   'nine',
// ];
