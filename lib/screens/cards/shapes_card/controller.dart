import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class ShapesController with ChangeNotifier {

  List<CardItem> shapesCardItem = [
    CardItem(id: 1, name: 'circle', image: 'circle.png'),
    CardItem(id: 2, name: 'oval', image: 'oval.png'),
    CardItem(id: 3, name: 'triangle', image: 'triangle.png'),
    CardItem(id: 4, name: 'square', image: 'square.png'),
    CardItem(id: 5, name: 'rectangle', image: 'rectangle.png'),
    CardItem(id: 6, name: 'pentagon', image: 'pentagon.png'),
    CardItem(id: 7, name: 'hexagon', image: 'hexagon.png'),
    CardItem(id: 8, name: 'octagon', image: 'octagon.png'),
    CardItem(id: 9, name: 'star', image: 'star.png'),
    CardItem(id: 10, name: 'rhombus', image: 'rhombus.png'),
    CardItem(id: 11, name: 'line', image: 'line.png'),
  ];
}