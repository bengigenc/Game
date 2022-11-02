import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatorKey extends StatefulWidget {
  const CalculatorKey({super.key, required this.numbera, required this.numberb, required this.numberc});

 final String numbera;
final String numberb;
final String numberc;

  @override
  State<CalculatorKey> createState() => _CalculatorKeyState();
}

class _CalculatorKeyState extends State<CalculatorKey> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal.shade100),
              child: Text(
                widget.numbera,
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal.shade100),
              child: Text(
                widget.numberb,
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.teal.shade100),
              child: Text(
                widget.numberc,
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    
  }
}

 //List<Map<String, dynamic>> key = [
//    {"keynumbera": "1", "keynumberb": "2", "keynumberc": "3"},
  //  {"keynumbera": "4", "keynumberb": "5", "keynumberc": "6"},
 //   {"keynumbera": "7", "keynumberb": "8", "keynumberc": "9"},
 //   {"keynumbera":"clear","keynumberb": "0","keynumberc":"*"},
 // ];




//Container(
         //     child: SizedBox(
           //     height: 500,
           //     child: ListView.builder(
             //     itemCount: key.length,
               //   scrollDirection: Axis.vertical,
                 // itemBuilder: (context, index) {
                   // return CalculatorKey(
                    //  numbera: key[index]["keynumbera"],
                     // numberb: key[index]["keynumberb"],
                      //numberc: key[index]["keynumberc"], );},),),) 