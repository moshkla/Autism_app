import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'controller.dart';


class Answer extends StatefulWidget {
  final String num ;
  final String text ;
  final int index;
  final Object ? question;

   const Answer({Key? key, required this.text,required this.num,required this.question,required this.index,}) : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( right: 15, left: 20),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(-12, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.num, style:const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black)),
                Expanded(child: Text(widget.text, style:const TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Color(0xff9C4D9E)))),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Transform.translate(
              offset: const Offset( 0, -4),
              child: RadioListTile(
                  activeColor:const Color(0xff9C4D9E),
                value:0 ,
                  groupValue:widget.question,
                  onChanged:(val){
                    context.read<Question>().updateQuestionsValue(index: widget.index, newValue: val!);
                    context.read<Question>().correctValue();
                  },
                title: const Align(
                  alignment: Alignment(-1.2, 0),
                    child: Text('Yes',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9C4D9E) ),))
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Transform.translate(
              offset: const Offset( 0, -4),
              child: RadioListTile(
                  activeColor:const Color(0xff9C4D9E),
                  value:1,
                  groupValue:widget.question,
                  onChanged:(val){
                    context.read<Question>().updateQuestionsValue(index:widget.index, newValue: val!);
                    context.read<Question>().someWhatValue();
                    },
                  title: const Align(
                      alignment: Alignment(-1.2, 0),
                      child: Text('Some what',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9C4D9E) ),))
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Container(

            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Transform.translate(
              offset: const Offset( 0, -4),
              child: RadioListTile(
                  activeColor:const Color(0xff9C4D9E),
                  value:2,
                  groupValue:widget.question,
                  onChanged:(val){
                    context.read<Question>().updateQuestionsValue(index: widget.index, newValue: val!);
                    context.read<Question>().noeValue();
                  },
                  title: const Align(
                      alignment: Alignment(-1.2, 0),
                      child: Text('No',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff9C4D9E) ),))
              ),
            ),
          ),
          const SizedBox(height: 20,),


        ],
      ),
    );
  }
}
