
import 'package:Autism/screens/drawer/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final GlobalKey <ScaffoldState> scaffoldKey = GlobalKey <ScaffoldState>();

@override
Widget build(BuildContext context) {
  return Scaffold(
    key: scaffoldKey,
    endDrawer: const Drawer(
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
          offset:const Offset(-15,10),
          child: InkWell(
              onTap: (){
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: Image.asset('assets/images/Group 202.png',height: 50.h,width: 50.w,)
          ),
        ),
      ],
    ),
    body:Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill),
        ),
      ),
      SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                'My profile',
                style:
                TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.pinkAccent.withOpacity(0.1),
                    child: Image.asset(
                      'assets/images/user.png',
                      height: 50.h,
                      width: 50.w,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    label: Text('omar',style: TextStyle(color: Colors.black87,fontSize: 25),),

                  ),
                ),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: Text('ahmed',style: TextStyle(color: Colors.black87,fontSize: 25),),

                ),
              ),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: Text('male',style: TextStyle(color: Colors.black87,fontSize: 25),),

                ),
              ),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: Text('10',style: TextStyle(color: Colors.black87,fontSize: 25),),

                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Center(
                child: Container(
                  height: 50.h,
                  width: 170.w,
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
            ],
          ),
        ),
      ),
    ]),
  );
}}