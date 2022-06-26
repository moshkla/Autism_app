// import 'package:Autism/screens/splash/controller.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   final controller = SplashController();
//
//   @override
//   void initState() {
//     super.initState();
//     controller.timer(context);
//   }
//
//   @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//             image:AssetImage('assets/images/splash screen.png'),fit: BoxFit.fill )
//       )
//       ),
//
//   );
// }}


import 'package:animate_do/animate_do.dart';
import 'package:Autism/screens/splash/controller.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = SplashController();

  @override
  void initState() {
    super.initState();
    controller.timer(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash screen (1).png',),
                  fit: BoxFit.fill
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spin(
                  animate: true,
                  duration: const Duration(seconds: 3),
                  child: Stack(
                    children: [
                      Container(
                        width:400,
                        height:400,
                        child: Image.asset(
                        'assets/images/logodoll.png', fit: BoxFit.cover,),
                      ),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Transform.translate(offset: Offset(-5.w,130.h),child: Image.asset('assets/images/d(1).png',width: 40.w,height: 40.h,)),
                      //   //  SizedBox(width: 5.w,),
                      //     Transform.translate(offset: Offset(0.w,145.h),child: Image.asset('assets/images/w.png',width: 40.w,height: 40.h,)),
                      //    // SizedBox(width: 5.w,),
                      //     Transform.translate(offset: Offset(5.w,130.h),child: Image.asset('assets/images/a.png',width: 40.w,height: 40.h,)),
                      //   ],
                      // ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}

