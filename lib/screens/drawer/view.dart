import 'package:Autism/screens/kids_list/view.dart';
import 'package:Autism/screens/language/view.dart';
import 'package:Autism/screens/profile/view.dart';
import 'package:Autism/screens/progress/view.dart';
import 'package:Autism/screens/test/result_page/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);


@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back_drawer.JPEG',),
              fit: BoxFit.fill
            )
        ),
        child:Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45.h,),
              Text('Settings',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(height: 50.h,),
              ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) => ProfileScreen()));
                },
                leading:Image.asset('assets/images/user.png',height: 25.h,width: 25.w,),
                title: Text('profile',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold)),
              ),
              SizedBox(height: 10.h,),
              ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) => ResultPage()));
                },
                leading:Image.asset('assets/images/test.png',height: 25.h,width: 25.w,),
                title: const Text('Test',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold)),
              ),
              SizedBox(height: 10.h,),
              ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) => ProgressScreen()));
                },
                leading:Image.asset('assets/images/rising.png',height: 25.h,width: 25.w,),
                title: const Text('progress',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold)),
              ),
              SizedBox(height: 10.h,),
              ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) => KidsScreen()));
                },
                leading:Image.asset('assets/images/customer.png',height: 25.h,width: 25.w,),
                title: Text('Kids list',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold)),
              ),
              SizedBox(height: 10.h,),
              ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) => LanguageScreen()));
                },
                leading:Image.asset('assets/images/languages.png',height: 25.h,width: 25.w,),
                title: Text('language',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold)),
              ),
              SizedBox(height: 10.h,),
              ListTile(
                leading:Image.asset('assets/images/information.png',height: 25.h,width: 25.w,),
                title: Text('about us',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold)),
              ),




            ],
          ),
        )),
  );
}}