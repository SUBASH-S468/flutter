import 'package:flutter/material.dart';
import 'gameplayer.dart';
import 'gamewinner.dart';
class StartGame extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.blueAccent,
              height: MediaQuery.of(context).size.height/2,
              width: double.infinity,
              child:Center(
                child: 
               MaterialButton(
                color: Colors.white,
                shape: CircleBorder(),
                height: 150,
                minWidth:150 ,

                onPressed:()
              {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Gameplayer()));
              },
              child: Text("Start"),
               ),
              ),
            ),
             Container(
              color: Colors.redAccent,
              height: MediaQuery.of(context).size.height/2,
              width: double.infinity,
              child:Center(
                child: MaterialButton(
                  color: Colors.white,
                  shape: CircleBorder(),
                  height: 150,
                  minWidth: 150,
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Gameplayer() ));
                  },
                  child: Text("start"),
              ) ,
            ),
             ),
          ],
        ),
      ),
    );
  
  }
} 