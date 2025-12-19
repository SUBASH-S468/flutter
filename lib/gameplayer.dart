

import 'package:flutter/material.dart';
import 'package:fingergame/gameplayer.dart';
import 'package:fingergame/gamewinner.dart';
 
class Gameplayer extends StatefulWidget {
  @override
  State<Gameplayer> createState() => _GameplayerState();
}

class _GameplayerState extends State<Gameplayer> {
  double bluecardhei = 0;
  double redcardhei =0;
  int playerAscore =0;
  int playerBscore=0;
  bool initiater =false;
  @override
  Widget build(BuildContext context) {
    if(initiater == false){
    bluecardhei =MediaQuery.of(context).size.height /2;
    redcardhei = MediaQuery.of(context).size.height /2;
    
    initiater =true;
    }
    return Scaffold(
        body: Column(
          children: [
            MaterialButton(onPressed: () {
              print(bluecardhei);
              setState(() {
                bluecardhei = bluecardhei+30;
                redcardhei = redcardhei-30;
                playerBscore=playerBscore+5;

              });

              double screenhei = MediaQuery.of(context).size.height;
              double winhei = MediaQuery.of(context).size.height-60;

              print(bluecardhei);
              print(winhei);

              if(bluecardhei>winhei)
              {
               Navigator.push(context, MaterialPageRoute(builder:(context)=>Gamewinner(playerBscore,"B")));

       }
            },
            padding: EdgeInsets.zero,

              child: Container(
                color: Colors.blueAccent,
                height: bluecardhei,
                width: double.infinity,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child:Row(
                  children: [
                    Expanded(child: 
                    Text("PlayerA",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold ),
                    ),
                    ),
                    Text(playerBscore.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                ),
                
                
              
              ),
            ),
          MaterialButton(onPressed: () {
           setState(() {
             redcardhei =redcardhei+30;
             bluecardhei = bluecardhei-30;
             playerAscore=playerAscore+5;
           });
           double screenhei = MediaQuery.of(context).size.height; 
            double winhei = MediaQuery.of(context).size.height-60;
             print(redcardhei);
             print(winhei);
           
            if(redcardhei>winhei)
              {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Gamewinner(playerAscore, "A") ));
               
       }
          
            
          },
          padding: EdgeInsets.zero,
              child: Container(
                color: Colors.redAccent,
                height: redcardhei,
                width: double.infinity,
                  alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10),
                child:Row(
                  children: [
                    Expanded(child: 
                    Text("player B",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold ),
                    ),
                    ),
                    Text(playerAscore.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                
                
                  ],
                ),
                
              ),
            ),
          ],
        ),
    );
  
  }
} 