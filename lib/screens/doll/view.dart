import 'package:Autism/screens/drawer/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DollScreen extends StatefulWidget {
  @override
  State<DollScreen> createState() => _DollScreenState();
}

class _DollScreenState extends State<DollScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child:DrawerScreen(),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash screen.png'),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 5, left: 16),
              child: Transform.translate(
                offset: Offset(0, -300),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          size: 35,
                        )),
                    SizedBox(
                      width: 85.w,
                    ),
                    Text(
                      'Dwa',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                    SizedBox(
                      width: 85.w,
                    ),
                    InkWell(
                        onTap: () {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                        child:
                        Image.asset('assets/images/Group 202.png',height: 50,width: 50,)
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, 160),
            child: Container(
              width: double.infinity,
              height: 550.h,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
            ),
          ),
        ],
      ),
    );
  }
}
