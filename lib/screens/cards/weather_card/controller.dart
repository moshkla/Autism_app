import 'package:Autism/screens/cards/family_card/controller.dart';
import 'package:flutter/cupertino.dart';

class WeatherController with ChangeNotifier {

  List<CardItem> weatherCardItem = [
    CardItem(id: 1, name: 'cloudy', image: 'cloudy.png'),
    CardItem(id: 2, name: 'rainy', image: 'rainy.png'),
    CardItem(id: 3, name: 'snow', image: 'snow.png'),
    CardItem(id: 4, name: 'thunder', image: 'thunder.png'),
    CardItem(id: 5, name: 'sunny', image: 'sunny.png'),
    CardItem(id: 6, name: 'autumn', image: 'autumn.png'),
    CardItem(id: 7, name: 'winter', image: 'winter.png'),
    CardItem(id: 8, name: 'spring', image: 'spring.png'),
    CardItem(id: 9, name: 'summer', image: 'summer.png'),
  ];
}