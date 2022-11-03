import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title:  Text('Game Over', style: TextStyle(color: Colors.teal,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),),
                content:  Text('Your highest scoore is 0.0', style: TextStyle(color: Colors.teal, fontSize: 15),),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child:  Text('RESTART', style: TextStyle(color: Colors.purple.shade200,),),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK',),
                    child:  Icon(Icons.close, color: Colors.purple,),
                  ),
                ],
              ),
            ),
        child:  Icon(
          Icons.pause_circle,
          size: 35,
          color: Colors.purple.shade200,
        ));
  }
}
