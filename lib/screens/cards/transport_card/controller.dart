import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class TransportsController with ChangeNotifier {

  List<CardItem> transportCardItem = [
    CardItem(id: 1, name: 'airplane', image: 'airplane.png'),
    CardItem(id: 2, name: 'tractor', image: 'tractor.png'),
    CardItem(id: 3, name: 'bicycle', image: 'bicycle.png'),
    CardItem(id: 4, name: 'airship', image: 'airship.png'),
    CardItem(id: 5, name: 'car', image: 'car.png'),
    CardItem(id: 6, name: 'bus', image: 'bus.png'),
    CardItem(id: 7, name: 'police car', image: 'police car.png'),
    CardItem(id: 8, name: 'motorcycle', image: 'motorcycle.png'),
    CardItem(id: 9, name: 'train', image: 'train.png'),
    CardItem(id: 10, name: 'pickup trunk', image: 'pickup trunk.png'),
    CardItem(id: 11, name: 'boat', image: 'boat.png'),
    CardItem(id: 12, name: 'helicopter', image: 'helicopter.png'),
  ];
}
