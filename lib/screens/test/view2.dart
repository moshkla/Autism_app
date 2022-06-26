import 'dart:ui';
import 'package:Autism/screens/test/view3.dart';
import 'package:Autism/screens/test/widget/answer.dart';
import 'package:Autism/screens/test/widget/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
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
              padding: const EdgeInsets.only(top: 30, right: 15, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Answer(
                    num: 'Q8.',
                    text: 'Has a different voice or speech ?',
                    index: 8,
                    question: Provider.of<Question>(context).question8,
                  ),
                  Answer(
                    num: 'Q9.',
                    text:
                        'Expresses sounds involuntarily;clears throat, grunts, smacks, cries or screams',
                    index: 9,
                    question: Provider.of<Question>(context).question9,
                  ),
                  Answer(
                    num: 'Q10.',
                    text:
                        'Is surprisingly good at some things and surprisingly poor at others ?',
                    index: 10,
                    question: Provider.of<Question>(context).question10,
                  ),
                  Answer(
                    num: 'Q11.',
                    text:
                        'Uses language freely but fails to make adjustment to fit social contexts or the needs of different listeners',
                    index: 11,
                    question: Provider.of<Question>(context).question11,
                  ),
                  Answer(
                    num: 'Q12.',
                    text: 'Lacks empathy',
                    index: 12,
                    question: Provider.of<Question>(context).question12,
                  ),
                  Answer(
                    num: 'Q13.',
                    text: 'Maks naive and embarrassing remarks',
                    index: 13,
                    question: Provider.of<Question>(context).question13,
                  ),
                  Answer(
                    num: 'Q14.',
                    text: 'Has a deviant style of gaze ?',
                    index: 14,
                    question: Provider.of<Question>(context).question14,
                  ),
                  const SizedBox(
                    height: 15,
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
                              context.read<Question>().validateSelectedValue2();
                          if (result == false) {
                            const snackbar =  SnackBar(
                                elevation: 5,
                                backgroundColor: Colors.white,
                                content:Text('- You must answer all questions !',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),) );
                            ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Test3()));
                          }
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>Test2()));
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
