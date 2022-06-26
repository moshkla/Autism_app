import 'package:Autism/screens/cards/dictionary_card/widget/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'controller.dart';

class DictionaryCard extends StatelessWidget {
  DictionaryCard({Key? key}) : super(key: key);
  final controller = DictionaryController();

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
                  fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 5,
                          spreadRadius: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            height: 100,
                            child: Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: context
                                      .watch<DictionaryController>()
                                      .mostSelectedItems
                                      .map((element) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/${element.image}",
                                            height: 40,
                                            width: 40,
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            element.name,
                                            style: const TextStyle(
                                              fontSize: 13,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                // Stack(
                                //   children: [
                                //     Transform.translate(
                                //       offset: const Offset(155, 0),
                                //       child: InkWell(
                                //         onTap: () {},
                                //         child: Container(
                                //           width: 40,
                                //           height: 40,
                                //           decoration: BoxDecoration(
                                //             color: Colors.black,
                                //             borderRadius:
                                //                 BorderRadius.circular(50),
                                //           ),
                                //           child: const Icon(
                                //             Icons.delete_forever,
                                //             size: 30,
                                //             color: Colors.white,
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_outlined,
                                  size: 35,
                                )),
                            const Spacer(
                              flex: 3,
                            ),
                            const Text(
                              "Dictionary",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 40),
                            ),
                            const Spacer(
                              flex: 3,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                BorderRadius.circular(50),
                              ),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) {
                            //           return DictionaryCard();
                            //         },
                            //       ),
                            //     );
                            //   },
                            //   child: Container(
                            //     height: 50,
                            //     width: 50,
                            //     child: Column(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: [
                            //         const SizedBox(
                            //           height: 2,
                            //         ),
                            //         Image.asset(
                            //           'assets/images/dictionary.png',
                            //           height: 30,
                            //           width: 30,
                            //         ),
                            //         const SizedBox(
                            //           height: 5,
                            //         ),
                            //         const Text(
                            //           'Dictionary',
                            //           style: TextStyle(
                            //               fontSize: 10,
                            //               fontWeight: FontWeight.bold),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 650,
                    padding: const EdgeInsets.all(12),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      children: List.generate(
                        context
                            .read<DictionaryController>()
                            .selectedItems
                            .length,
                        (index) => InkWell(
                          onTap: () {
                            context
                                .read<DictionaryController>()
                                .updateMostSelectedItems(
                                  context
                                      .read<DictionaryController>()
                                      .selectedItems[index],
                                );
                          },
                          child: DictionaryCardItem(
                            image1: 'uni.png',
                            image: context
                                .read<DictionaryController>()
                                .selectedItems[index]
                                .image,
                            name: context
                                .read<DictionaryController>()
                                .selectedItems[index]
                                .name,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
