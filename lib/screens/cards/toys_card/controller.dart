import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class ToysController with ChangeNotifier {

  List<CardItem> toysCardItem = [
    CardItem(id: 1, name: 'drum', image: 'drum.png'),
    CardItem(id: 2, name: 'robot', image: 'robot.png'),
    CardItem(id: 3, name: 'dummy', image: 'dummy.png'),
    CardItem(id: 4, name: 'kite', image: 'kite.png'),
    CardItem(id: 5, name: 'ball', image: 'ball.png'),
    CardItem(id: 6, name: 'car', image: 'car.png'),
    CardItem(id: 7, name: 'duck', image: 'duck.png'),
    CardItem(id: 8, name: 'cubes', image: 'cubes.png'),
    CardItem(id: 9, name: 'counter', image: 'counter.png'),
  ];
}