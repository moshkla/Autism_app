import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'controller.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final controller = CreateProfileController();
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 75.h,
                ),
                Text(
                  'Create profile',
                  style:
                      TextStyle(fontSize: 38.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.pinkAccent.withOpacity(0.1),
                          child: Image.asset(
                            'assets/images/photo.png',
                            height: 50.h,
                            width: 50.w,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'add profile picture',
                        style: TextStyle(fontSize: 21.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.h,
                        width: 120.w,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: "First name",
                            hintStyle: TextStyle(
                                color: Colors.black54, fontSize: 16.sp),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                            enabled: true,
                            filled: true,
                            fillColor: Colors.pinkAccent.withOpacity(0.1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Container(
                        height: 40.h,
                        width: 120.w,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: "Last name",
                            hintStyle: TextStyle(
                                color: Colors.black54, fontSize: 15.sp),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                            enabled: true,
                            filled: true,
                            fillColor: Colors.pinkAccent.withOpacity(0.1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      title: Text(
                        isMale ? 'Male' : 'Female',
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 18),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Image.asset(
                              'assets/images/boy.png',
                              height: 25.h,
                              width: 25.w,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            color: Colors.blue.withOpacity(0.5),
                            height: 25.h,
                            width: 1.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Image.asset(
                              'assets/images/girl.png',
                              height: 25.h,
                              width: 25.w,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 45.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.pinkAccent.withOpacity(0.1),
                    ),
                  ),
                  child: Container(
                    height: 40.h,
                    width: 120.w,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "Age",
                        hintStyle:
                            TextStyle(color: Colors.black54, fontSize: 15.sp),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.transparent)),
                        enabled: true,
                        filled: true,
                        fillColor: Colors.pinkAccent.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: Container(
                    height: 50.h,
                    width: 155.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff9c4d9e),
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
                        onPressed: () {
                          const snackbar = SnackBar(
                            elevation: 5,
                            backgroundColor: Colors.white,
                            content: Center(
                              child:
                              CircularProgressIndicator(
                              backgroundColor: Colors.white10,
                              color: Colors.pinkAccent,
                              strokeWidth: 2,
                            ),
                            ),

                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          setState(() {
                            controller.timer(context);
                          });
                          //  Navigator.push(context,MaterialPageRoute(builder:(context) => Enter_Page()));
                        },
                        child: Text(
                          'Start',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp,
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
// CircularProgressIndicator(
//   backgroundColor: Colors.white10,
//   color: Colors.pinkAccent,
//   strokeWidth: 2,
// ),