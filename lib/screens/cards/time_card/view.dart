import 'dart:ui';
import 'package:Autism/screens/cards/dictionary_card/controller.dart';
import 'package:Autism/screens/cards/time_card/widget/view.dart';
import 'package:Autism/screens/cards/widget/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'controller.dart';

class TimeCard extends StatefulWidget {
  const TimeCard({Key? key}) : super(key: key);

  @override
  _TimeCardState createState() => _TimeCardState();
}

class _TimeCardState extends State<TimeCard> {
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
                const AppBarItem(
                  nameOfCard: 'Time',
                ),
                Transform.translate(
                  offset: const Offset(0, -15),
                  child: Container(
                    height: 650,
                    padding: const EdgeInsets.all(12),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      children: List.generate(
                        context.read<TimeController>().timeCardItem.length,
                        (index) => InkWell(
                            onTap: () {
                              context
                                  .read<DictionaryController>()
                                  .updateSelectedItems(context
                                      .read<TimeController>()
                                      .timeCardItem[index]);
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  shape: const CircleBorder(),
                                  content: Container(
                                    height: 150,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Image.asset(
                                            'assets/images/${context.read<TimeController>().timeCardItem[index].image}'),
                                        Text(context
                                            .read<TimeController>()
                                            .timeCardItem[index]
                                            .name),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: TimeCardItem(
                              image1: 'uni.png',
                              image: context
                                  .read<TimeController>()
                                  .timeCardItem[index]
                                  .image,
                              name: context
                                  .read<TimeController>()
                                  .timeCardItem[index]
                                  .name,
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
