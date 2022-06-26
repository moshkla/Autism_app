import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class EmotionsController with ChangeNotifier {

  List<CardItem> emotionsCardItem = [
    CardItem(id: 1, name: 'smile', image: 'smile.png'),
    CardItem(id: 2, name: 'confused', image: 'confused.png'),
    CardItem(id: 3, name: 'cry', image: 'cry.png'),
    CardItem(id: 4, name: 'happy', image: 'happy.png'),
    CardItem(id: 5, name: 'surprised', image: 'surprised.png'),
    CardItem(id: 6, name: 'laugh', image: 'laugh1.png'),
    CardItem(id: 7, name: 'sad', image: 'sad.png'),
  ];
}
