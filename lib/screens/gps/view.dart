import 'package:Autism/screens/drawer/view.dart';
import 'package:Autism/screens/gps/main_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';

class GpsScreen extends StatefulWidget {
  const GpsScreen({Key? key}) : super(key: key);

  @override
  State<GpsScreen> createState() => _GpsScreenState();
}

class _GpsScreenState extends State<GpsScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: scaffoldKey,
      endDrawer: const Drawer(
        child: DrawerScreen(),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash screen (1).png'),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
              const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      size: 35,
                    )),
                SizedBox(
                  width: 85.w,
                ),
                const Text(
                  'Gps',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                SizedBox(
                  width: 85.w,
                ),
                InkWell(
                    onTap: () {
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                    child: Image.asset(
                      'assets/images/Group 202.png',
                      height: 50,
                      width: 50,
                    )),
                SizedBox(
                  width: 15.w,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
                height: 650,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/back_GPS.jpg'),
                        fit: BoxFit.fill),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: SingleChildScrollView(
                  child:
                  Column(
                    children: [
                      SizedBox(
                        height: 300.h,
                      ),
                      Container(
                        height: 165.h,
                        width: 295.w,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                          SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 45.h,
                          width: 270.w,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                            keyboardType: TextInputType.streetAddress,
                            decoration: InputDecoration(
                              hintText: "  Please enter parent`s email ",
                              hintStyle: TextStyle(
                                  color: Colors.black54, fontSize: 20.sp),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                  const BorderSide(color: Colors.black54)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent)),
                              enabled: true,
                              filled: true,
                              fillColor: Colors.pinkAccent.withOpacity(0.1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                            height: 40.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0x992f4898),
                              //Colors.deepPurple.withOpacity(0.9),
                            ),
                            child: TextButton(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              onPressed: () {
                                _requestPermission().then((value) {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => MainMap()));
                                });

                              }, child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.sp,
                                  color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ), //                 ), ),
                ]),
          )),
      ],
    ),)
    ,
    )
    ,
    );
  }
}
// Stack(
//   children: [
//     Container(
//       height: double.infinity,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('assets/images/splash screen.png'),
//             fit: BoxFit.fill),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(right: 5, left: 16),
//         child: Transform.translate(
//           offset: const Offset(0, -300),
//           child: Row(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: const Icon(
//                     Icons.arrow_back_outlined,
//                     size: 35,
//                   )),
//               SizedBox(
//                 width: 85.w,
//               ),
//               const Text(
//                 'Gps',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, fontSize: 40),
//               ),
//               SizedBox(
//                 width: 85.w,
//               ),
//               InkWell(
//                 onTap: () {
//                   scaffoldKey.currentState!.openEndDrawer();
//                 },
//                 child:
//                 Image.asset('assets/images/Group 202.png',height: 50,width: 50,)
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     Transform.translate(
//       offset: const Offset(0, 160),
//       child: Stack(
//         children:[
//           Container(
//           width: double.infinity,
//           height: 550.h,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/images/back_GPS.jpg'),fit:BoxFit.fill),
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(50),
//                   topLeft: Radius.circular(50))),
//
//         ),
//           Transform.translate(
//             offset: Offset(32.w, 330.h),
//             child: Container(
//               height: 160.h,
//               width: 300.w,
//               decoration: BoxDecoration(
//                 color: Colors.black45,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(height: 20.h,),
//                   Container(
//                     height: 45.h,
//                     width: 270.w,
//                     decoration: BoxDecoration(
//                       color: Colors.white70,
//                       borderRadius: BorderRadius.circular(20)
//                     ),
//                     child: TextFormField(
//                       keyboardType: TextInputType.streetAddress,
//                       decoration: InputDecoration(
//                         hintText: "  Please enter parent`s email ",
//                         hintStyle: TextStyle(
//                             color: Colors.black54, fontSize: 20.sp),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: const BorderSide(color: Colors.black54)),
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide:
//                            const  BorderSide(color: Colors.transparent)),
//                         enabled: true,
//                         filled: true,
//                         fillColor: Colors.pinkAccent.withOpacity(0.1),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 30.h,),
//                   Container(
//                     height: 40.h,
//                     width: 120.w,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: const Color(0x992f4898),
//                       //Colors.deepPurple.withOpacity(0.9),
//                     ),
//                     child: TextButton(
//                         clipBehavior: Clip.antiAliasWithSaveLayer,
//                         onPressed: () {},
//                         child: Text(
//                           'SUBMIT',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 22.sp,
//                               color: Colors.white),
//                         )),
//                   ),
//
//                 ],
//               ),
//             ),
//           ),
//      ] ),
//     ),
//   ],
// ),
// );

Future<void> _requestPermission() async {
  var status = await Permission.location.request();
  if (status.isGranted) {
    print('done');
  } else if (status.isDenied) {
    _requestPermission();
  } else if (status.isPermanentlyDenied) {
    openAppSettings();
  }
}