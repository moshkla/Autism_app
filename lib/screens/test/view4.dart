import 'dart:ui';

import 'package:Autism/screens/test/result_page/view2.dart';
import 'package:Autism/screens/test/widget/answer.dart';
import 'package:Autism/screens/test/widget/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Test4 extends StatefulWidget {
  const Test4({Key? key}) : super(key: key);

  @override
  State<Test4> createState() => _Test4State();
}

class _Test4State extends State<Test4> {
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
                    num: 'Q22.',
                    text:
                        'Has difficulties in completing simple daily activities because of compulsory repetition of certain actions or thoughts',
                    index: 22,
                    question: Provider.of<Question>(context).question22,
                  ),
                  Answer(
                    num: 'Q23.',
                    text: 'Has special routines: insists on no change',
                    index: 23,
                    question:Provider.of<Question>(context).question23,
                  ),
                  Answer(
                    num: 'Q24.',
                    text: 'Show idiosyncratic attachment to objects',
                    index: 24,
                    question: Provider.of<Question>(context).question24,
                  ),
                  Answer(
                    num: 'Q25.',
                    text: 'Is bullied by other children',
                    index: 25,
                    question: Provider.of<Question>(context).question25,
                  ),
                  Answer(
                    num: 'Q26.',
                    text: 'Has marked unusual facial expression',
                    index: 26,
                    question: Provider.of<Question>(context).question26,
                  ),
                  Answer(
                    num: 'Q27.',
                    text: 'Has markedly unusual posture',
                    index: 27,
                    question: Provider.of<Question>(context).question27,
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
                              context.read<Question>().validateSelectedValue4();
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
                                    builder: (context) => ResultScreen()));
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
