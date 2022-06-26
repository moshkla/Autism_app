import 'dart:ui';
import 'package:Autism/screens/cards/body_card/widget/view.dart';
import 'package:Autism/screens/cards/dictionary_card/controller.dart';
import 'package:Autism/screens/cards/widget/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class BodyCard extends StatefulWidget {
  const BodyCard({Key? key}) : super(key: key);

  @override
  _BodyCardState createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
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
                const AppBarItem(nameOfCard: 'Body',),
                Transform.translate(
                  offset: const Offset(0, -15),
                  child: Container(
                    height: 650,
                    padding: const EdgeInsets.all(12),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      children: List.generate(
                        context
                            .read<BodyController>()
                            .bodyCardItem
                            .length,
                          (index) =>InkWell(
                            onTap: (){
                              context.read<DictionaryController>()
                                  .updateSelectedItems(context
                                  .read<BodyController>()
                                  .bodyCardItem[index]);
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  shape: const CircleBorder(),
                                  content: Container(
                                    height: 150,
                                    child: Column(
                                      children: [
                                       const SizedBox(height: 20,),
                                        Image.asset('assets/images/${context
                                            .read<
                                            BodyController>()
                                            .bodyCardItem[index]
                                            .image}'),
                                        Text(context
                                            .read<
                                            BodyController>()
                                            .bodyCardItem[index]
                                            .name),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                              child:BodyCardItem(
                                image1:'uni.png' ,
                                image: context
                                    .read<
                                    BodyController>()
                                    .bodyCardItem[index]
                                    .image,
                                name: context
                                    .read<
                                    BodyController>()
                                    .bodyCardItem[index]
                                    .name,
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
