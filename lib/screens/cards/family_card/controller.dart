// ignore_for_file: non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FamilyController with ChangeNotifier {
  List<CardItem> FamilyCardItem = [
    CardItem(
      id: 1,
      image: "grandpa.png",
      name: "grandpa",
    ),
    CardItem(
      id: 2,
      image: "grandma.png",
      name: "grandma",
    ),
    CardItem(
      id: 3,
      image: "dad.png",
      name: "dad",
    ),
    CardItem(
      id: 4,
      image: "mum.png",
      name: "mom",
    ),
    CardItem(
      id: 5,
      image: "sister.png",
      name: "sister",
    ),
    CardItem(
      id: 6,
      image: "brother.png",
      name: "brother",
    ),
  ];

}

class CardItem {
  final int id;
  final String name, image;
  CardItem({
    required this.id,
    required this.name,
    required this.image,
  });
}
