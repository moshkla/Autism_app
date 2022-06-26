import 'dart:ui';
import 'package:Autism/screens/test/view4.dart';
import 'package:Autism/screens/test/widget/answer.dart';
import 'package:Autism/screens/test/widget/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Test3 extends StatefulWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {
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
                    num: 'Q15.',
                    text:
                        'Wishes to social but fails to make relationships with peers',
                    index: 15,
                    question: Provider.of<Question>(context).question15,
                  ),
                  Answer(
                    num: 'Q16.',
                    text: 'Can be with other children but only o his/her terms',
                    index: 16,
                    question: Provider.of<Question>(context).question16,
                  ),
                  Answer(
                    num: 'Q17.',
                    text: 'Lacks best friend',
                    index: 17,
                    question: Provider.of<Question>(context).question17,
                  ),
                  Answer(
                    num: 'Q18.',
                    text: 'Lacks some sense',
                    index: 18,
                    question: Provider.of<Question>(context).question18,
                  ),
                  Answer(
                    num: 'Q19.',
                    text:
                        'Is poor at games: on idea of cooperating in a item, score "owen goals"',
                    index: 19,
                    question: Provider.of<Question>(context).question19,
                  ),
                  Answer(
                    num: 'Q20.',
                    text:
                        'Has clumsy, ill coordinated, ungainly, awkward movements or gestures',
                    index: 20,
                    question: Provider.of<Question>(context).question20,
                  ),
                  Answer(
                    num: 'Q21.',
                    text: 'Has involuntary face or body movements',
                    index: 21,
                    question: Provider.of<Question>(context).question21,
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
                              context.read<Question>().validateSelectedValue3();
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
                                    builder: (context) => const Test4()));
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
