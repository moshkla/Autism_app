import 'dart:ui';
import 'package:Autism/screens/drawer/view.dart';
import 'package:Autism/screens/main/view.dart';
import 'package:Autism/screens/test/view1.dart';
import 'package:Autism/screens/test/widget/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';


class ResultPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const Drawer(
        child: DrawerScreen(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.png',
                ),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform.translate(
                offset: const Offset(290, 30),
                child: InkWell(
                    onTap: () {
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                    child: Image.asset(
                      'assets/images/Group 202.png',
                      height: 65,
                      width: 65,
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              const Align(
                  alignment: Alignment(-0.9, 0),
                  child: Text(
                    'Test',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -10),
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: const Color(0xff2f4899),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Text(
                    ' You have done the test before and your \n  score is (${((context.watch<Question>().totalScore/81*100).truncate()).toString()}%).',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0x90ffcce6),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                    child: Text(
                  'Would you restart the test ?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Test1()));
                    },
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xff9c4d9e),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                          child: Text(
                        'Yes',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()));
                    },
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xff2f4899),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                          child: Text(
                        'No',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
