import 'package:Autism/screens/cards/dictionary_card/controller.dart';
import 'package:Autism/screens/cards/family_card/widget/view.dart';
import 'package:Autism/screens/cards/widget/component.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller.dart';

class FamilyCard extends StatefulWidget {
  const FamilyCard({Key? key}) : super(key: key);

  @override
  _FamilyCardState createState() => _FamilyCardState();
}

class _FamilyCardState extends State<FamilyCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash screen (1).png'),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppBarItem(
                  nameOfCard: 'Family',
                ),
                Container(
                  height: 650,
                  padding: const EdgeInsets.all(12),
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    children: List.generate(
                      context.read<FamilyController>().FamilyCardItem.length,
                      (index) => InkWell(
                        onTap: () {
                          context.read<DictionaryController>().updateSelectedItems(
                                context
                                    .read<FamilyController>()
                                    .FamilyCardItem[index],
                              );
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
                                        'assets/images/${context.read<FamilyController>().FamilyCardItem[index].image}'),
                                    Text(context
                                        .read<FamilyController>()
                                        .FamilyCardItem[index]
                                        .name),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: FamilyCardItem(
                          image1: 'uni.png',
                          image: context
                              .read<FamilyController>()
                              .FamilyCardItem[index]
                              .image,
                          name: context
                              .read<FamilyController>()
                              .FamilyCardItem[index]
                              .name,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
