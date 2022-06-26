import 'dart:ui';

import 'package:Autism/helper/colors.dart';
import 'package:Autism/screens/drawer/view.dart';
import 'package:flutter/material.dart';
import 'controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KidsScreen extends StatefulWidget {
  const KidsScreen({Key? key}) : super(key: key);

  @override
  _KidsScreenState createState() => _KidsScreenState();
}

class _KidsScreenState extends State<KidsScreen> {
  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey <ScaffoldState>();
  final controller = KidsController();

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
          offset: Offset(-10,5),
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
              SizedBox(height: 30.h,),
              Container(
                margin: const EdgeInsets.only(bottom: 60),
                alignment: Alignment.topLeft,
                child: const Text(
                  'Kids list',
                  style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                ),
              ),

              ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: controller.names.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    controller.isSelected = !controller.isSelected;
                    controller.selectedIndex=index;
                    setState(() {});
                  },
                  child: Container(
                    height: 55.h,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color:index==controller.selectedIndex
                          ? Color(0x80ffcce6)
                          : Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          right: 15, left: 15, bottom: 10, top: 10),
                      child: Row(
                        children: [
                          Text(
                            '${controller.names[index]}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Spacer(),
                          index==controller.selectedIndex
                              ? Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffffcce6),
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
                        ],
                      ),
                    ),
                  ),
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,

              ),
              SizedBox(
                height: 60.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50.h,
                      width: 135.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.purple.withOpacity(0.7),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 1,
                            spreadRadius: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: TextButton(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          onPressed: () {},
                          child: Text(
                            'save',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.sp,
                                color: Colors.white),
                          )),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: Container(
                      height: 50.h,
                      width: 165.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff2f4899),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 1,
                            spreadRadius: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: TextButton(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          onPressed: () {},
                          child: Text(
                            'Add new child',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.sp,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}