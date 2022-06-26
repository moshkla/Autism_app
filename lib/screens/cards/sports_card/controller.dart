import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class SportsController  with ChangeNotifier {

  List<CardItem> sportsCardItem = [
    CardItem(id: 1, name: 'windsurfing', image: 'windsurfing.png'),
    CardItem(id: 2, name: 'ballet', image: 'ballet.png'),
    CardItem(id: 3, name: 'ping pong', image: 'ping pong.png'),
    CardItem(id: 4, name: 'boxing', image: 'boxing.png'),
    CardItem(id: 5, name: 'golf', image: 'golf.png'),
    CardItem(id: 6, name: 'karate', image: 'karate.png'),
    CardItem(id: 7, name: 'football', image: 'football.png'),
    CardItem(id: 8, name: 'ski diving', image: 'ski diving.png'),
    CardItem(id: 9, name: 'weight lifting', image: 'weight lifting.png'),
    CardItem(id: 10, name: 'horse riding', image: 'horse riding.png'),
    CardItem(id: 11, name: 'basketball', image: 'basketball.png'),
    CardItem(id: 12, name: 'cycling', image: 'cycling.png'),
    CardItem(id: 13, name: 'jumping', image: 'jumping.png'),
    CardItem(id: 14, name: 'handball', image: 'handball.png'),
    CardItem(id: 15, name: 'water ball', image: 'waterball.png'),
    CardItem(id: 16, name: 'handball', image: 'tennis.png'),

  ];
}