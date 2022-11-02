import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/math_puzzle_calculator.dart';
import 'package:game/widget/math_puzzle_widget.dart';

class MathPuzzle extends StatefulWidget {
  const MathPuzzle({super.key});

  @override
  State<MathPuzzle> createState() => _MathPuzzleState();
}

class _MathPuzzleState extends State<MathPuzzle> {
  List<Map<String, dynamic>> section = [
    {
      "symbolIcon": Icons.calculate,
      "Name": "Calculator",
      "Score": "3",
      "class": MathPuzzleCalculator()
    },
    {
      "symbolIcon": Icons.question_mark,
      "Name": "Guess the sign?",
      "Score": "0",
      "class": MathPuzzleCalculator()
    },
    {
      "symbolIcon": Icons.event_note,
      "Name": "Correct answer",
      "Score": "2",
      "class": MathPuzzleCalculator()
    },
    {
      "symbolIcon": Icons.flash_on,
      "Name": "Quick calculation",
      "Score": "0",
      "class": MathPuzzleCalculator()
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 5),
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.teal.shade200,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Math Puzzle",
                style: TextStyle(
                    color: Colors.purple.shade200,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Each game with simple calculation with different approach.",
              style: TextStyle(color: Colors.purple.shade200, fontSize: 15),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 570,
                child: ListView.builder(
                  itemCount: section.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => section[index]["class"],
                        ));
                      },
                      child: MathPuzzleWidget(
                        symbolIcon: section[index]["symbolIcon"],
                        symbolText: section[index]["Name"],
                        scoreText: section[index]["Score"],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
