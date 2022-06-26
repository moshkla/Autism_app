import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class JobsController with ChangeNotifier {
  List<CardItem> jobsCardItem = [
    CardItem(id: 1, name: 'engineer', image: 'engineer.png'),
    CardItem(id: 1, name: 'mechanic', image: 'mechanic.png'),
    CardItem(id: 1, name: 'musician', image: 'musician.png'),
    CardItem(id: 1, name: 'nurse', image: 'nurse.png'),
    CardItem(id: 1, name: 'policeman', image: 'policeman.png'),
    CardItem(id: 1, name: 'priest', image: 'priest.png'),
    CardItem(id: 1, name: 'scientist', image: 'scientist.png'),
    CardItem(id: 1, name: 'singer', image: 'singer.png'),
    CardItem(id: 1, name: 'fireman', image: 'fireman.png'),
    CardItem(id: 1, name: 'farmer', image: 'farmer.png'),
    CardItem(id: 1, name: 'doctor', image: 'doctor.png'),
    CardItem(id: 1, name: 'dancer', image: 'dancer.png'),
    CardItem(id: 1, name: 'chef', image: 'chef.png'),
  ];
}