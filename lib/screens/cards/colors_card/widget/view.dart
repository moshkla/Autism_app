import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import '../controller.dart';

class ColorsCardItem extends StatelessWidget {
  final controller = ColorsController();
  // ignore: prefer_typing_uninitialized_variables
  final name, image1, image;

  ColorsCardItem({Key? key, this.name, this.image1, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/$image1',
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              spreadRadius: -5,
              color: Colors.black12,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/$image',
            height: 65,
            width: 65,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 3,
          ),
        ],
      ),
    );
  }
}
