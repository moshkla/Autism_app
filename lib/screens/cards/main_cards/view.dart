import 'dart:ui';

import 'package:Autism/screens/cards/main_cards/widget/view.dart';
import 'package:Autism/screens/cards/widget/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'controller.dart';
class MainCards extends StatelessWidget {
  MainCards({Key? key}) : super(key: key);
  final controller = CardsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash screen (1).png'),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [

                const AppBarItem(nameOfCard: 'Cards',),
                Transform.translate(
                  offset: const Offset(0, -15),
                  child: Container(
                    height: 650,
                    padding: const EdgeInsets.all(12),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      children: List.generate(
                          controller.cardsName.length,
                          (index) =>InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>controller.cards[index]));
                            },
                              child:CardItem(
                                image1:'Union1.png' ,
                                image2: controller.cardsImage[index],
                                name: controller.cardsName[index],
                              )),),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
