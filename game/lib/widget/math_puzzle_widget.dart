import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class MathPuzzleWidget extends StatefulWidget {
  const MathPuzzleWidget({super.key, required this.symbolIcon, required this.symbolText, required this.scoreText});

  final IconData symbolIcon;
  final String symbolText;
  final String scoreText;

  @override
  State<MathPuzzleWidget> createState() => _MathPuzzleWidgetState();
}

class _MathPuzzleWidgetState extends State<MathPuzzleWidget> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 15, ),
        height: 120,
        width: 500,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.teal.shade200),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(
                        widget.symbolIcon,
                        color: Colors.purple.shade200,
                        size: 40,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        widget.symbolText,
                        style: TextStyle(
                            color: Colors.teal.shade200,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ))
                ],
              ),
            ),
            Divider(
              color: Colors.teal.shade200,
              thickness: 1,
              endIndent: 20,
              indent: 20,
              height: 11,
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 22),
                    child: Text(
                      "Score:",
                      style:
                          TextStyle(color: Colors.purple.shade200, fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 7, left: 10),
                          height: 15,
                          width: 15,
                          child: Image.asset("assets/images/kupa.png")),
                      Text(widget.scoreText,
                          style: TextStyle(
                              color: Colors.teal.shade200, fontSize: 15)),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 180),
                      child: Icon(
                        Icons.play_circle,
                        color: Colors.teal.shade200,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    )
    ;
  }
}
