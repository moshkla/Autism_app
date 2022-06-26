import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DictionaryController with ChangeNotifier {

  List<CardItem> mostSelectedItems = [];
  updateMostSelectedItems(CardItem item) {
    if (!mostSelectedItems.contains(item)) {
      mostSelectedItems.add(item);
    }
    notifyListeners();
  }
  List<CardItem> selectedItems = [];

  updateSelectedItems(CardItem item) {
    if (!selectedItems.contains(item)) {
      selectedItems.add(item);
    }
    notifyListeners();
  }
}












// final String name,image;
// NumberModel({
//   required this.image,
//   required this.name,
//
// });

// late final  String image ,name ;
//  CardsModel({  required this.image, required this.name});
