import 'dart:ui';
import 'package:Autism/screens/drawer/view.dart';
import 'package:Autism/screens/language/widgets/item.dart';
import 'package:flutter/material.dart';
import 'controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey <ScaffoldState>();
  final controller = LanguageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child:DrawerScreen(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Transform.translate(
          offset: const Offset(-10,5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        actions: [
          Transform.translate(
            offset: Offset(-15,10),
            child: InkWell(
                onTap: (){
                  scaffoldKey.currentState!.openEndDrawer();
                },
                child: Image.asset('assets/images/Group 202.png',height: 50,width: 50,)

            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(bottom: 40),
                child: const Text(
                  'Language',
                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
                ),
              ),
              Item(
                color: controller.isSelected
                    ? Colors.grey.withOpacity(0.2)
                    : const Color(0x80ffcce6),
                lang: 'Arabic',
                correct: controller.isSelected
                    ? Container()
                    : Container(
                  decoration: BoxDecoration(
                    color: const Color(0x80ffcce6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/images/check.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                name: 'AR',
                press: () {
                  controller.isSelected = false;
                  setState(() {});
                },
              ),
              Item(
                lang: 'English',
                color: controller.isSelected
                    ? Color(0x80ffcce6)
                    : Colors.grey.withOpacity(0.2),
                name: 'EN',
                correct: controller.isSelected
                    ? Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffcce6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/images/check.png',
                    height: 20,
                    width: 20,
                  ),
                )
                    : Container(),
                press: () {
                  controller.isSelected = true;
                  setState(() {});
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 60),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: MaterialButton(
                  padding: const EdgeInsets.only(
                      right: 60, left: 60, top: 13, bottom: 13),
                  onPressed: () {},
                  child: const Text(
                    'SAVE',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.purple.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}