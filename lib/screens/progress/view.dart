import 'package:Autism/screens/drawer/view.dart';
import 'package:Autism/screens/progress/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final controller = Item_ScreenController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child: DrawerScreen(),
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
            offset: const Offset(-15,10),
            child: InkWell(
                onTap: (){
                  scaffoldKey.currentState!.openEndDrawer();
                },
                child: Image.asset('assets/images/Group 202.png',height: 50,width: 50,)
              // Container(
              //   margin: const EdgeInsets.only(top: 15,right: 30),
              //   decoration: BoxDecoration(
              //     color: Colors.pinkAccent.withOpacity(0.5),
              //     borderRadius: BorderRadius.circular(10),
              //     boxShadow: const [
              //     BoxShadow(
              //       color: Colors.black12,
              //       blurRadius: 2.0,
              //       offset: Offset(0.0, -5.0)
              //     ),]
              //   ),
              //   height: 40.h,
              //   width: 50.w,
              //   child: const Icon(
              //     Icons.menu,
              //     color: Colors.black,
              //     size: 35,
              //
              //   ),
              // ),
            ),
          ),
        ],
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'Progress',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'Five Levels :',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
                  Transform.translate(
                    offset: const Offset(-30,-15),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h,),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    '1- Egg',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Transform.translate(
                                  offset:  const Offset(80,-30),
                                  child: Container(
                                    height: 150.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                      //image: DecorationImage(image: AssetImage('assets/images/1-removebg-preview.png'))
                                    ),
                                    child: Image.asset('assets/images/1-removebg-preview.png',height: 5,width: 5,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Transform.translate(
                                  offset:Offset(14,0),
                                  child: Text(
                                    '2- Toddler',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Transform.translate(
                                  offset:  const Offset(80,-20),
                                  child: Container(
                                    height: 150.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                      //image: DecorationImage(image: AssetImage('assets/images/1-removebg-preview.png'))
                                    ),
                                    child: Image.asset('assets/images/2-removebg-preview.png',height: 5,width: 5,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  '3- Kid',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Transform.translate(
                                  offset:  const Offset(80,-10),
                                  child: Container(
                                    height: 145.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                      //image: DecorationImage(image: AssetImage('assets/images/1-removebg-preview.png'))
                                    ),
                                    child: Image.asset('assets/images/3-removebg-preview.png',height: 5,width: 5,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Transform.translate(
                                  offset:Offset(10,0),
                                  child: Text(
                                    '4- Teen',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Transform.translate(
                                  offset:  const Offset(80,-0),
                                  child: Container(
                                    height: 150.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                      //image: DecorationImage(image: AssetImage('assets/images/1-removebg-preview.png'))
                                    ),
                                    child: Image.asset('assets/images/4-removebg-preview.png',height: 5,width: 5,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Transform.translate(
                                  offset:Offset(25,10),
                                  child: Text(
                                    '5- Student',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Transform.translate(
                                  offset:  const Offset(80,15),
                                  child: Container(
                                    height: 150.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                      //image: DecorationImage(image: AssetImage('assets/images/1-removebg-preview.png'))
                                    ),
                                    child: Image.asset('assets/images/5-removebg-preview.png',height: 5,width: 5,),
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),

            ]),
          ),
        ),
      ]),
    );
  }
}
