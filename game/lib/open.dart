import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game/math_puzzle.dart';

class Open extends StatefulWidget {
  const Open({super.key});

  @override
  State<Open> createState() => _OpenState();
}

class _OpenState extends State<Open> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple.shade100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset("assets/images/kupa.png"),
                        ),
                        Container(
                          child: Text(
                            "23",
                            style: TextStyle(
                                color: Colors.yellow.shade100, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.teal.shade100),
                      child: Icon(Icons.sunny,
                          color: Colors.yellow.shade200, size: 30),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.only(top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Math Matrix",
                    style: TextStyle(
                        color: Colors.purple.shade200,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Train Your Brain, Improve your math Skill",
                    style:
                        TextStyle(color: Colors.purple.shade200, fontSize: 15),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 60, right: 30, left: 30),
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Colors.teal.shade200)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images/math2.png"),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        "Math Puzzle",
                        style: TextStyle(
                            color: Colors.teal.shade200,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                )),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MathPuzzle(),
                    ));
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 30, left: 30),
              height: 120,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: Colors.teal.shade200)),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset("assets/images/memory.png"),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Memory Puzzle",
                      style: TextStyle(
                          color: Colors.teal.shade200,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 30, left: 30),
              height: 120,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: Colors.teal.shade200)),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset("assets/images/brain.png"),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Train Your Brain",
                      style: TextStyle(
                          color: Colors.teal.shade200,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 70, right: 30, left: 30),
              height: 30,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Math Matrix by Nividata",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    Text(
                      "v1.0.5",
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
