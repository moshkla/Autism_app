import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class PlantsController with ChangeNotifier {

  List<CardItem> plantsCardItem = [
    CardItem(id: 1, name: 'seeds', image: 'seeds.png'),
    CardItem(id: 2, name: 'palm tree', image: 'palm tree.png'),
    CardItem(id: 3, name: 'leaf', image: 'leaf.png'),
    CardItem(id: 4, name: 'plotted', image: 'plotted.png'),
    CardItem(id: 5, name: 'grass', image: 'grass.png'),
    CardItem(id: 6, name: 'tree', image: 'tree.png'),
    CardItem(id: 7, name: 'stick', image: 'stick.png'),
    CardItem(id: 8, name: 'tree trunk', image: 'tree trunk.png'),
    CardItem(id: 9, name: 'branch', image: 'branch.png'),
  ];
}