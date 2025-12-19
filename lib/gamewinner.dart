import 'package:flutter/material.dart';
import 'package:fingergame/gameplayer.dart';
import 'package:fingergame/gamewinner.dart';
 
 class Gamewinner extends StatefulWidget {
  int Score = 0;
  String player ="";
  Gamewinner(this.Score,this.player);
  @override
  State<Gamewinner> createState() => _GamewinnerState();
}

class _GamewinnerState extends State<Gamewinner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.player=="A" ? Colors.redAccent:Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.Score.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),

            Text(widget.player=="A"?"PLAYER A WIN":"PLAYER B WIN",
            style: TextStyle(fontSize: 35),),
            MaterialButton(onPressed: (){
              Navigator.pop(context);
              Navigator.pop(context);
            },
            color: Colors.white,
            child: Text("restart game"),
              
        )
          ],
        ),
      ),
    );
    
  }
}