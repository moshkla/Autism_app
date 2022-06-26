import 'package:Autism/screens/cards/alphabet_card/view.dart';
import 'package:Autism/screens/cards/animals_card/view.dart';
import 'package:Autism/screens/cards/body_card/view.dart';
import 'package:Autism/screens/cards/clothes_card/view.dart';
import 'package:Autism/screens/cards/colors_card/view.dart';
import 'package:Autism/screens/cards/describe_card/view.dart';
import 'package:Autism/screens/cards/drink_card/view.dart';
import 'package:Autism/screens/cards/emotions_card/view.dart';
import 'package:Autism/screens/cards/family_card/view.dart';
import 'package:Autism/screens/cards/food_card/view.dart';
import 'package:Autism/screens/cards/hygiene_card/view.dart';
import 'package:Autism/screens/cards/jobs_card/view.dart';
import 'package:Autism/screens/cards/numbers_card/view.dart';
import 'package:Autism/screens/cards/plants_card/view.dart';
import 'package:Autism/screens/cards/position_card/view.dart';
import 'package:Autism/screens/cards/pronous_card/view.dart';
import 'package:Autism/screens/cards/questions_card/view.dart';
import 'package:Autism/screens/cards/shapes_card/view.dart';
import 'package:Autism/screens/cards/sports_card/view.dart';
import 'package:Autism/screens/cards/time_card/view.dart';
import 'package:Autism/screens/cards/toys_card/view.dart';
import 'package:Autism/screens/cards/transport_card/view.dart';
import 'package:Autism/screens/cards/verbs_card/view.dart';
import 'package:Autism/screens/cards/weather_card/view.dart';

class CardsController {
  // late final  String image ,name ;
  //  CardsModel({  required this.image, required this.name});
  List<String> cardsImage = [
    'numbers.png',
    'alphabet.png',
    'verbs.png',
    'pronous.png',
    'food.png',
    'coffee0.png',
    'emotions.png',
    'weather.png',
    'family.png',
    'colors.png',
    'clothes.png',
    'body.png',
    'animal.png',
    'time.png',
    'shape.png',
    'sport.png',
    'transport.png',
    'toy.png',
    'question.png',
    'position.png',
    'describe.png',
    'hygiene.png',
    'plant.png',
    'job.png',
  ];
  List<String> cardsName = [
    'numbers',
    'alphabet',
    'verbs',
    'pronouns',
    'food',
    'drink',
    'emotions',
    'weather',
    'family',
    'colors',
    'clothes',
    'body',
    'animals',
    'time',
    'shapes',
    'sports',
    'transports',
    'toys',
    'questions',
    'position',
    'describe',
    'hygiene',
    'plants',
    'jobs',
  ];
  List cards = [
    const NumbersCard(),
    AlphabetCard(),
    VerbsCard(),
    PronousCard(),
    FoodCard(),
    DrinkCard(),
    EmotionsCard(),
    WeatherCard(),
    const FamilyCard(),
    ColorsCard(),
    ClothesCard(),
    BodyCard(),
    AnimalsCard(),
    TimeCard(),
    ShapesCard(),
    SportsCard(),
    TransportCard(),
    ToysCard(),
    QuestionsCard(),
    PositionCard(),
    DescribeCard(),
    HygieneCard(),
    PlantsCard(),
    JobsCard()
  ];
}

// final String name,image;
// NumberModel({
//   required this.image,
//   required this.name,
//
// });
