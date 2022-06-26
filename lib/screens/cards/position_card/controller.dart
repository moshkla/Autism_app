import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PositionController  with ChangeNotifier {
  List<CardItem> positionCardItem = [
    CardItem(id: 1, name: 'in', image: 'in.png'),
    CardItem(id: 2, name: 'out', image: 'out.png'),
    CardItem(id: 3, name: 'on', image: 'on.png'),
    CardItem(id: 4, name: 'under', image: 'under.png'),
    CardItem(id: 5, name: 'behind', image: 'behind.png'),
    CardItem(id: 6, name: 'in front', image: 'in front.png'),
    CardItem(id: 7, name: 'through', image: 'through.png'),
    CardItem(id: 8, name: 'between', image: 'between.png'),
    CardItem(id: 9, name: 'around', image: 'around.png'),
    CardItem(id: 10, name: 'up', image: 'up.png'),
    CardItem(id: 11, name: 'down', image: 'down.png'),
    CardItem(id: 12, name: 'right', image: 'right.png'),
    CardItem(id: 13, name: 'left', image: 'left.png'),
    CardItem(id: 14, name: 'forwards', image: 'forwards.png'),
    CardItem(id: 15, name: 'backwards', image: 'backwords.png'),
    CardItem(id: 16, name: 'before', image: 'before.png'),
    CardItem(id: 17, name: 'after', image: 'after.png'),
  ];
}