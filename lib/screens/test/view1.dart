import 'dart:ui';
import 'package:Autism/screens/test/view2.dart';
import 'package:Autism/screens/test/widget/answer.dart';
import 'package:Autism/screens/test/widget/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';



class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background.png',
                  ),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 25, right: 15, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'This child stands out as different from other children of his/her age in the following way',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  // const Text(
                  //   '  from other children of his/her age ',
                  //   style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  // ),
                  // const Text(
                  //   '  in the following way',
                  //   style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  // ),
                  const SizedBox(
                    height: 25,
                  ),
                  Answer(
                    num: 'Q1.',
                    text: 'Is old_fashioned or precocious ?',
                    index: 1,
                    question:Provider.of<Question>(context).question1 ,                  ),
                  Answer(
                    num: 'Q2.',
                    text:
                        'Is regarded as an "eccentric professor" by the other children ?',
                    index: 2,
                    question:Provider.of<Question>(context).question2,
                  ),
                  Answer(
                    num: 'Q3.',
                    text:
                        'Lives somewhat in the world of his/her own with restricted idiosyncratic intellectual interests',
                    index: 3,
                    question: Provider.of<Question>(context).question3,
                  ),
                  Answer(
                    num: 'Q4.',
                    text:
                        'Accumulates facts on certain subjects (good rote memory)but dose not really understand the meaning.',
                    index: 4,
                    question:Provider.of<Question>(context).question4,
                  ),
                  Answer(
                    num: 'Q5.',
                    text:
                        'Has literal understanding of ambiguous and metaphorical language ?',
                    index: 5,
                    question:Provider.of<Question>(context).question5,
                  ),
                  Answer(
                    num: 'Q6.',
                    text:
                        'Has a deviant style of communication with a formal,fussy,old-fashioned or "robot-like" language ?',
                    index: 6,
                    question:Provider.of<Question>(context).question6,
                  ),
                  Answer(
                    num: 'Q7.',
                    text: 'Invents idiosyncratic words and expressions',
                    index: 7,
                    question:Provider.of<Question>(context).question7,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: 125,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0x90ffcce6),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                              child: Text(
                            'Previous',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          var result =
                              context.read<Question>().validateSelectedValue1();
                          if (result == false) {
                            const snackbar =  SnackBar(
                              elevation: 5,
                                backgroundColor: Colors.white,
                                content:Text('- You must answer all questions !',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),) );
                            ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Test2()));
                          }

                        },
                        child: Container(
                          height: 50,
                          width: 125,
                          decoration: BoxDecoration(
                            color: const Color(0x90ffcce6),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                              child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
