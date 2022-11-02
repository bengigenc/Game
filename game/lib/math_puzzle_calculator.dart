import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/widget/math_puzzle_cal_widget.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class MathPuzzleCalculator extends StatefulWidget {
  const MathPuzzleCalculator({super.key});

  @override
  State<MathPuzzleCalculator> createState() => _MathPuzzleCalculatorState();
}

class _MathPuzzleCalculatorState extends State<MathPuzzleCalculator> {
String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(left: 5),
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Colors.teal.shade200,
                        )),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 7),
                          height: 20,
                          width: 20,
                          child: Image.asset("assets/images/kupa.png")),
                      Text("0",
                          style: TextStyle(
                              color: Colors.teal.shade200, fontSize: 20)),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5),
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.pause_circle,
                        size: 35,
                        color: Colors.purple.shade200,
                      )),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () { showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 500,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Quick Calculation'),
                      ElevatedButton(
                        child: const Text('GOT IT!'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );  },
              child: Container(
                width: 70,
                color: Colors.white,
              
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Calculator",
                        style: TextStyle(
                            fontSize: 12, color: Colors.purple.shade200),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.info,
                        color: Colors.purple.shade100,
                        size: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150, bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "__  ",
                    style: TextStyle(
                        color: Colors.teal.shade200,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "/",
                    style: TextStyle(
                        color: Colors.teal.shade200,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " __ ",
                    style: TextStyle(
                        color: Colors.teal.shade200,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 20),
              alignment: Alignment.center,
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "$text",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            
             NumericKeyboard(
            onKeyboardTap: _onKeyboardTap,
            textColor: Colors.purple.shade100,
            

            rightButtonFn: () {
              setState(() {
                text = text.substring(0, text.length - 1);
              });
            },
            rightIcon: Icon(
              Icons.backspace,
              color: Colors.teal.shade200,
            ),
            leftButtonFn: () {
              setState(() {
                
              });
              text ='';
            },
            leftIcon: Icon(
              Icons.refresh,
              color: Colors.teal.shade200,
            ),
          ),



          ],
        ),
      ),
    );
  }
   _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
}


