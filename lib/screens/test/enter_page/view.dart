import 'dart:ui';

import 'package:Autism/screens/main/view.dart';
import 'package:Autism/screens/test/view1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Enter_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png',),fit: BoxFit.fill
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Wondering if your child \nhas Autism ?',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
               SizedBox(height: 10,),
              const Align(
                alignment: Alignment(-0.8, 0),
                  child: Text('Let`s find out !',style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.black54),)),
              const SizedBox(height: 25,),
              const Text('- make sure that your child is more than 3 years old.',style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),),
              const SizedBox(height: 50,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Test1()));

                    },
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                        color:const Color(0xff9c4d9e),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(child: Text('Start\nText',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  const Spacer(),
                  const Text('or',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                  const Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>MainScreen()));

                    },
                    child: Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff2f4899),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(child: Text('Skip',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),)),
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
