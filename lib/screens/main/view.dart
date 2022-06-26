import 'dart:ui';
import 'package:Autism/screens/cards/main_cards/view.dart';
import 'package:Autism/screens/doll/view.dart';
import 'package:Autism/screens/drawer/view.dart';
import 'package:Autism/screens/gps/view.dart';
import 'package:Autism/screens/profile/view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectIndex =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const Drawer(
        child: DrawerScreen(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Transform.translate(
            offset: const Offset(-25, 10),
            child: InkWell(
                onTap: () {
                  scaffoldKey.currentState!.openEndDrawer();
                },
                child: Image.asset(
                  'assets/images/Group 202.png',
                  height: 50,
                  width: 50,
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(bottom: 25, right: 25, left: 25),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text.rich(
                        TextSpan(
                            style: TextStyle(fontSize: 40.sp),
                            children: const [
                              TextSpan(
                                  text: 'Hi\n\t',
                                  style: TextStyle(color: Colors.black45)),
                              TextSpan(text: 'Omar !'),
                            ]),
                      )),
                  SizedBox(
                    height: 50.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => MainCards())));
                      },
                    child: Container(
                      height: 120.h,
                      width: double.infinity,
                      child: Image.asset('assets/images/b1.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => DollScreen())));
                    },
                    child: Container(
                      height: 120.h,
                      width: double.infinity,
                      child: Image.asset('assets/images/b3.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const GpsScreen())));
                    },
                    child: Container(
                      height: 120.h,
                      width: double.infinity,
                      child: Image.asset('assets/images/b2.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        backgroundColor: const Color(0xffffcce6),
        //Colors.white,
        index: selectIndex,
        onTap: (index) {
          selectIndex = index;
          setState(() {});
        },

        items:[
          IconButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context) => const ProfileScreen()));

            },
            icon:Icon(Icons.person,
            size: 30,
            color:selectIndex==0?const Color(0xffffcce6):Colors.black12, //isSelected?colorPrimary:Colors.black,
            ),),
          Icon(
          Icons.home,
            size: 30,
            color:selectIndex==1?const Color(0xffffcce6):Colors.black12,// isSelected?colorPrimary:Colors.black,
          ),
          Icon(
            Icons.notifications,
            size: 30,
            color: selectIndex==2?const Color(0xffffcce6):Colors.black12,// isSelected?colorPrimary:Colors.black,
          ),
    ],

      ),
    );
  }
}
