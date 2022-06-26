import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonScreen extends StatelessWidget {
  final name;
  final style;
  final color1;
  final color2;
  final image;

    ButtonScreen( {this.name, this.style, this.color1, this.color2, this.image}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(20),
        child:Row(
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                  child: Image.asset(
                    'assets/images/$image',
                    width: 30.w,
                    height: 30.h,
                  )),
            ),
            SizedBox(width: 15.w,),
            Text(
              '$name',
              style: style,
            ),
          ],
        ),

    );
  }
}
