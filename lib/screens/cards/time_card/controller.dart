import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class TimeController with ChangeNotifier {

  List<CardItem> timeCardItem = [
    CardItem(id: 1, name: 'clock', image:'clock.png'),
    CardItem(id: 2, name: 'now', image:'now.png'),
    CardItem(id: 3, name: 'today', image:'today.png'),
    CardItem(id: 4, name: 'yesterday', image:'yesterday.png'),
    CardItem(id: 5, name: 'tomorrow', image:'tomorrow.png'),
    CardItem(id: 6, name: 'day', image:'day.png'),
    CardItem(id: 7, name: 'morning', image:'morning.png'),
    CardItem(id: 8, name: 'afternoon', image:'afternooon.png'),
    CardItem(id: 9, name: 'night', image:'night.png'),
    CardItem(id: 10, name: 'this week', image:'this week.png'),
    CardItem(id: 11, name: 'weekend', image:'weekend.png'),
    CardItem(id: 12, name: 'next week', image:'next week.png'),
    CardItem(id: 13, name: 'this month', image:'this month.png'),
    CardItem(id: 14, name: 'last month', image:'last month.png'),
    CardItem(id: 15, name: 'next month', image:'next month.png'),
  ];

}

