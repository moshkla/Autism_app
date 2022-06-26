import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class DrinkController with ChangeNotifier {
  List<CardItem> drinkCardItem = [
    CardItem(
      id: 1,
      image: "coffee.png",
      name: "coffee",
    ),
    CardItem(
      id: 2,
      image: "can.png",
      name: "can",
    ),
    CardItem(
      id: 3,
      image: "milk.png",
      name: "milk",
    ),
    CardItem(
      id: 4,
      image: "water.png",
      name: "water",
    ),
    CardItem(
      id: 5,
      image: "orange juice.png",
      name: "orange juice",
    ),
    CardItem(
      id: 6,
      image: "tea.png",
      name: "tea",
    ),
    CardItem(
      id: 7,
      image: "lemon juice.png",
      name: "lemon juice",
    ),
  ];


}



// class DrinkController {
//
//   List<String> cardsImage = [
//     'coffee.png',
//     'can.png',
//     'milk.png',
//     'water.png',
//     'orange juice.png',
//     'tea.png',
//     'lemon juice.png',
//
//   ];
//   List<String> cardsName = [
//     'coffee',
//     'can',
//     'milk',
//     'water',
//     'orange juice',
//     'tea',
//     'lemon juice',
//
//   ];
//
// }
//
// // final String name,image;
// // NumberModel({
// //   required this.image,
// //   required this.name,
// //
// // });
