import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class QuestionsController with ChangeNotifier {

  List<CardItem> questionsCardItem = [
    CardItem(id: 1, name: 'what', image: 'what.png'),
    CardItem(id: 2, name: 'why', image: 'why.png'),
    CardItem(id: 3, name: 'how', image: 'how.png'),
    CardItem(id: 4, name: 'how many', image: 'how many.png'),
    CardItem(id: 5, name: 'when', image: 'when.png'),
    CardItem(id: 6, name: 'which', image: 'which.png'),
    CardItem(id: 7, name: 'where', image: 'where.png'),
  ];
}